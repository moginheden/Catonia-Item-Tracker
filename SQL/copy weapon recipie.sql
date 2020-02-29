select *
from items
where type like 'Weapon - % - Mod'
  and id in (select result
			 from recipies
			 where profession = 'Blacksmithing')
  and subtype = 'Blacksmithing'

--base items
insert into recipies
select oldResult.id, resultQty, 'Jewelcrafter' as profession, crafterLevel, case when type = 'Weapon - Light' then 4 when type = 'Weapon - 1H' then 6 else 8 end as [hours]
--, oldResult.name, (select count(*) from recipies where result = oldResult.id) as numRecipies, oldRecipie.*
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
where oldResult.id in (select id 
from items
where type like 'Weapon - %'
  --and id in (select result
		--	 from recipies
		--	 where profession = 'Blacksmithing')
  and subtype = ''
  and name != 'Serpent Longsword')
  and profession = 'Blacksmithing'


insert into recipieIngredients
select recipies.id as recipieID, (select id from items where name = 'copper ingot') as ingredient, hours as qty
from recipies
where result in (select id
			 from items
			 where type like 'Weapon - %'
			   and subtype = ''
               and name != 'Serpent Longsword')
  
  and recipies.profession = 'Jewelcrafter'


--mods
insert into items
select replace(name, 'Iron', 'Moonlight') as name, 
	   'Adds +5 to hit on attack rolls' as description, 
	   case when type = 'Weapon - Light - Mod' then 19600 when type = 'Weapon - 1H - Mod' then 28600 when type = 'Weapon - 2H - Mod' then 376000 end as cost, 
	   type,
	   'Jewelcrafting' as subtype
from items
where type like 'Weapon - % - Mod'
  and id in (select result
			 from recipies
			 where profession = 'Blacksmithing')
  and subtype = 'Blacksmithing'
  and name like '%Iron%'


insert into recipies
select newResult.id, resultQty, 'Jewelcrafter' as profession, crafterLevel, case when newResult.type = 'Weapon - Light - Mod' then 4 
																				 when newResult.type = 'Weapon - 1H - Mod' then 6 
																				 else 8 end as [hours]
--, newResult.name, (select count(*) from recipies where result = oldResult.id) as numRecipies, oldRecipie.*
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join items newResult on newResult.name = replace(replace(replace(replace(replace(oldResult.name, 'Dragonite', 'Moonlight'), 'Nightsteel', 'Platinum'), 'Tritanium', 'Gold'), 'Redsteel', 'Silver'), 'Iron', 'Brass')
where oldResult.id in (select id 
					   from items
					   where type like 'Weapon - % - Mod'
						 and subtype = 'Blacksmithing')
  and profession = 'Blacksmithing'


insert into recipieIngredients
select newRecipie.id as recipieID, newIngredient.id as ingredient, recipieIngredients.qty as qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], newIngredient.name as [new ingredient]
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newIngredient on newIngredient.name = replace(replace(replace(replace(replace(oldIngredient.name, 'Dragonite', 'Moonlight'), 'Nightsteel', 'Platinum'), 'Tritanium', 'Gold'), 'Redsteel', 'Silver'), 'Iron', 'Brass')
	 inner join items newResult on newResult.name = replace(replace(replace(replace(replace(oldResult.name, 'Dragonite', 'Moonlight'), 'Nightsteel', 'Platinum'), 'Tritanium', 'Gold'), 'Redsteel', 'Silver'), 'Iron', 'Brass')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where oldResult.subtype = 'Blacksmithing'
  and oldResult.type like 'Weapon - % - Mod'
  and newResult.id != oldResult.id
