insert into items
select replace(name, 'Ring', 'Crown/Tiara') as name, description, case when name like 'Brass%' then cost+100 when name like 'Silver%' then cost+700 when name like 'Gold%' then cost+1400 when name like 'Platinum%' then cost+4000 when name like 'Moonlight%' then cost+9000 end as cost, 'Headgear' as type,
		'Jewelcrafting' as subtype
from items
where type = 'Ring'

insert into recipies
select newResult.id, resultQty, profession, crafterLevel, [hours]
--, newResult.name, (select count(*) from recipies where result = newResult.id) as numRecipies, oldRecipie.*
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join items newResult on newResult.name = replace(oldresult.name, 'Ring', 'Crown/Tiara')
where newResult.id != oldResult.id
  and oldResult.type = 'Ring'



insert into recipieIngredients
select newRecipie.id as recipieID, newIngredient.id as ingredient, qty as qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], newIngredient.name as [new ingredient]
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newIngredient on newIngredient.name = case when oldIngredient.name like '% p44b%' then 'Brass Ingot' else oldIngredient.name end
	 inner join items newResult on newResult.name = replace(oldresult.name, 'Ring', 'Crown/Tiara')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where oldResult.type = 'Ring'
  and newResult.id != oldResult.id
  and recipieIngredients.ingredient = oldIngredient.id
  and (((newRecipie.id % 3 = 0) and (oldIngredient.name like '%gem'))
       or ((newRecipie.id % 3 = 1) and (oldIngredient.name like '%shard'))
	   or ((newRecipie.id % 3 = 2) and (oldIngredient.name like '%peb%')))


insert into recipieIngredients
select newRecipie.id as recipieID, oldIngredient.id as ingredient, 2 as qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], oldIngredient.name as [new ingredient], *
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newResult on newResult.name = replace(oldresult.name, 'Ring', 'Crown/Tiara')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where oldResult.type = 'Ring'
  and newResult.id != oldResult.id
  and recipieIngredients.ingredient = oldIngredient.id
  and oldIngredient.name like '%ingot'
  and oldRecipie.id % 3 = 0


select * 
from recipies 
	inner join items res on recipies.result = res.id
where recipies.id = '1323'

select * from items where name = 'soul gem'

update recipieIngredients
set qty = 3
from items ingredientTable,
	 recipies
	 inner join items resultItem on resultItem.id = recipies.result
where ingredientTable.name like '% Ingot'
  and resultItem.name like '%Crown/Tiara'
  and recipieIngredients.ingredient = ingredientTable.id
  and recipies.id = recipieIngredients.recipieID


update recipies
set hours = 8
where result in (select id from items where name like 'Platinum % Ring')

update items
set cost = cost+700
where id in (select id from items where name like 'Gold % Ring')

select recipieID, (select name from items where id = ori.ingredient)
from recipieIngredients ori
	 inner join recipies oldRecipie on ori.recipieID = oldRecipie.id
	 inner join items oldResult on oldRecipie.result = oldResult.id
where oldResult.subtype = 'Jewelcrafting - Heavy Armor Gems'

select *, (select name from items where id = ingredient)
--delete 
from recipieIngredients
where recipieIngredients.recipieID in (select id from recipies where result in (select id from items where subtype = 'Jewelcrafting - Gems' and type = 'Shield - Tower - Mod'))
  and (select name from items where id = ingredient) like '%sha%'
  and recipieID %3 = 1

update recipies
set hours = 1
where result in (select id
				 from items
				 where name like '% - Buckler Shield'
				  and subtype = 'Jewelcrafting - Gems')

update recipieIngredients
set qty = (qty * 3) /2
where recipieID in (
select recipieID
from recipieIngredients ori
	 inner join recipies oldRecipie on ori.recipieID = oldRecipie.id
	 inner join items oldResult on oldRecipie.result = oldResult.id
where oldResult.subtype = 'Jewelcrafting - Heavy Armor Gems')