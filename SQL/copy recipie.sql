insert into items
select replace(name, 'Light Armor', 'Heavy Armor') as name, replace(description, 'light armor', 'heavy armor') as description, cost*3 as cost, 'Armor - Heavy - Mod' as type,
		'Jewelcrafting - Heavy Armor Gems' as subtype
from items
where subtype = 'Jewelcrafting - Light Armor Gems'


insert into recipies
select newResult.id, resultQty, profession, crafterLevel, [hours]
--, newResult.name, (select count(*) from recipies where result = newResult.id) as numRecipies, oldRecipie.*
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join items newResult on newResult.name = replace(oldResult.name, 'Light Armor', 'Heavy Armor')
where newResult.id != oldResult.id
  and oldResult.subtype = 'Jewelcrafting - Light Armor Gems'


insert into recipieIngredients
select newRecipie.id as recipieID, newIngredient.id as ingredient, recipieIngredients.qty *2 as qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], newIngredient.name as [new ingredient]
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newIngredient on newIngredient.name = case when oldIngredient.name = 'x' then 'y' else oldIngredient.name end
	 inner join items newResult on newResult.name = replace(oldResult.name, 'Light Armor', 'Heavy Armor')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where oldResult.subtype = 'Jewelcrafting - Light Armor Gems'
  and newResult.id != oldResult.id
  and recipieIngredients.ingredient = newIngredient.id
  and 0 = (select count(*) 
		   from recipieIngredients checkIngredients
		   where checkIngredients.ingredient = newIngredient.id
			 and checkIngredients.recipieID in (select id 
												from recipies checkRecipie
												where checkRecipie.result = newResult.id))

select * from recipies where recipies.id = '791'


select recipieID, (select name from items where id = ori.ingredient)
from recipieIngredients ori
	 inner join recipies oldRecipie on ori.recipieID = oldRecipie.id
	 inner join items oldResult on oldRecipie.result = oldResult.id
where oldResult.subtype = 'Jewelcrafting - Heavy Armor Gems'

select *, (select name from items where id = ingredient)
--delete 
from recipieIngredients
where recipieIngredients.recipieID in (select id from recipies where result in (select id from items where subtype = 'Jewelcrafting - Heavy Armor Gems'))
  and (select name from items where id = ingredient) like '%sha%'
  and recipieID %3 = 1

update recipieIngredients
set qty = (qty * 3) /2
where recipieID in (
select recipieID
from recipieIngredients ori
	 inner join recipies oldRecipie on ori.recipieID = oldRecipie.id
	 inner join items oldResult on oldRecipie.result = oldResult.id
where oldResult.subtype = 'Jewelcrafting - Heavy Armor Gems')