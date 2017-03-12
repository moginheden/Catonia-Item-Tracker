public class LootItem
{
	public int id = -1;
	public string name = null;
	public string description = "";
	
	public override equals(object a)
	{
		return this.id.equals(((LootItem)a).id);
	}
}

public class LootItemQty
{
	public LootItem item = null;
	public int qty = 0;
	
	public override equals(object a)
	{
		return this.item.id.equals(((LootItemQty)a).item.id);
	}
}

public class Recipie
{
	public int id = -1;
	public List<LootItemQty> ingredients = new List<LootItemQty>();
	public LootItem result;
	public int resultQty = 1;
	public string profession = null;
	public string crafterLevel = null;

	public override equals(object a)
	{
		return this.id.equals(((LootItem)a).id);
	}
}

public class MainWindow
{
	public List<LootItemQty> loot = new List<LootItemQty>();
	public List<Recipie> recipies = new List<Recipie>();
	
	public MainWindow()
	{
		using(SqlConnection dataConnection = new SqlConnection(ConfigurationManager.AppSettings["SQL_URI"]))
		{
			dataConnection.Open();
			
			//load loot
			string selectLoot = @"SELECT *
								  FROM loot
								  ORDER BY id";
			using(SqlCommand comm = new SqlCommand(selectLoot, dataConnection))
			{
				using(SqlDataReader reader = comm.DataReader())
				{
					while(reader.Read())
					{
						LootItem li = new LootItem();
						li.id = (int)reader["id"];
						li.name = (string)reader["name"];
						li.description = (string)reader["description"];
						
						LootItemQty liq = new LootItemQty();
						liq.item = li;
						liq.qty = (int)reader["qty"];
						
						loot.Add(liq);
					}
				}
			}
			
			//load recipies
			string selectRecipies = @"SELECT *
									  FROM recipies
									  ORDER BY id";
			using(SqlCommand comm = new SqlCommand(selectRecipies, dataConnection))
			{
				using(SqlDataReader reader = comm.DataReader())
				{
					while(reader.Read())
					{
						Recipie r = new Recipie();
						r.id = (int)reader["id"];
						
						string selectIngredients = @"SELECT *
													 FROM recipieIngredients
													 WHERE recipieID = '" + r.id + "'";
						using(SqlCommand commIngredients = new SqlCommand(selectIngredients, dataConnection))
						{
							using(SqlDataReader readerIngredients = commIngredients.DataReader())
							{
								while(readerIngredients.Read())
								{
									LootItemQty liq = new LootItemQty();
									liq.item = findLootInInventory((int)reader["ingredient"]).item;
									liq.qty = (int)reader["qty"];
									r.ingredients.add(liq);
								}
							}
						}
						LootItem result = findLootInInventory((int)reader["result"]).item;
						r.resultQty = (int)reader["resultQty"];
						r.profession = (string)reader["profession"];
						r.crafterLevel = (string)reader["crafterLevel"];
						
						recipies.Add(r);
					}
				}
			}
		}
	}
	
	/// <summary>
	/// Finds a LootItem in the loot list based on it's SQL id, (might be slightly off from it's list index due to add/delete.)
	/// </summary>
	public LootItemQty findLootInInventory(int lootID)
	{
		int lootIndex = lootID;
		while(loot[lootIndex].item.id > lootID)
		{
			lootIndex--;
		}
		while(loot[lootIndex].item.id < lootID)
		{
			lootIndex++;
		}
		
		if(loot[lootIndex].item.id != lootID)
		{
			throw new IndexOutOfRangeException("ID: " + lootID + " not found in loot list");
		}
		
		return loot[lootIndex];
	}
	
	/// <summary>
	/// returns all possible ways to make an item from current inventory
	/// </summary>
	/// <returns>
	/// A list (paths to make the item) of lists (ingredients in the path) of LootItemQty<item required, number required>
	/// </returns>
	public List<List<LootItemQty>> findCreationPaths(LootItem result)
	{
		List<LootItemQty> lootUsed = new List<LootItemQty>();
		
		return findCreationPaths(result, lootUsed);
	}
	
	/// <summary>
	/// returns all possible ways to make an item
	/// </summary>
	/// <param name="lootUsed">The list of items already used by this recipie line</param>
	/// <returns>
	/// A list (paths to make the item) 
	/// 	of KeyValuePair<lists (ingredients in the path) 
	///							of LootItemQty<item required, number required>
	///						, quantity this path can make>
	/// </returns>
	public List<KeyValuePair<List<LootItemQty>, int>> findCreationPaths(LootItem result, List<LootItemQty> lootUsed)
	{
		//create list of paths tomake the item
		List<KeyValuePair<List<LootItemQty>, int>> returnValue = new List<KeyValuePair<List<LootItemQty>, int>>();
		
		//loop over each basic path in the recipie list
		List<Recipie> recipiePaths = recipies.where(x => x.result == result);
		foreach(Recipie r in recipiePaths)
		{
			//default to infinite possible items to be made, then reduce based on current stock;
			int numPossible = int.MaxValue;
			
			foreach(LootItemQty currentIngredient in r.ingredients)
			{
				//find current stock
				LootItemQty itemInInventory = findLootInInventory(currentIngredient.item.id);
				int numInInventory = itemInInventory.qty;
				
				//take into account used up stockfrom other ingredient creation
				LootItemQty usedLoot = lootUsed.find(currentIngredient);
				if(usedLoot != null)
				{
					numInInventory -= usedLoot.qty;
				}
				
				//reduce total number to be made to match inventory
				int currNumPosible = numInInventory / currIngredient.qty;
				if(currNumPossible < numPossible)
				{
					numPossible = currNumPossible;
				}
			}
			
			//add basic recipie path to result set
			KeyValuePair<List<LootItemQty>, int> path = new KeyValuePair<List<LootItemQty>, int>();
			path.Key = r.ingredients;
			path.Value = numPossible;
			returnValue.add(path);
			
			//note used items for sub-queries
			foreach(LootItemQty currentIngredient in r.ingredients)
			{
				LootItemQty usedLoot = lootUsed.find(currentIngredient);
				if(usedLoot != null)
				{
					usedLoot.qty += numPossible * currentIngredient.qty;
				}
				else
				{
					LootItemQty liq = new LootItemQty();
					liq.item = currentIngredient.item;
					liq.qty = numPossible * currentIngredient.qty;
					lootUsed.Add(liq);
				}
				
				//check to see if this item can be made
				List<KeyValuePair<List<LootItemQty>, int>> innerCreation = findCreationPaths(currentIngredient.Key);
				if(innerCreation.Count != 0)
				{
					foreach(KeyValuePair<List<LootItemQty>, int> innerPath in innerCreation)
					{
						List<LootItemQty> newIngredients = new List<LootItemQty>();
						foreach(LootItemQty ingredientToAdd in r.ingredients)
						{
							if(ingredientToAdd.Item != currentIngredient.Item)
							{
								newIngredients.add(ingredientToAdd);
							}
						}
						foreach(List<LootItemQty> innerRecipie in innerPath.Key)
						{
							foreach(LootItemQty ingredientToAdd in innerRecipie)
							{
								newIngredients.add(ingredientToAdd);
							}
						}
						KeyValuePair<List<LootItemQty>, int> newPath = new KeyValuePair<List<LootItemQty>, int>();
						newPath.Key = newIngredients;
						newPath.Value = innerPath.Value;
						returnValue.add(newIngredients);
					}
				}
			}
		}
	}
}