

select replace(name, 'Iron', 'Brass Ruby') as name, 'Adds 10lbs and grants Fire resist 5.  Once per day when hit with a fire spell you gain 10HP.' as description, '1350' as cost, type, 'Jewelcrafting' as subtype from items
where name like 'iron - light armor'

select distinct subtype from items

select * 
from recipies
	 inner join items on recipies.result = items.id
where items.name like 'carnage%'


select recipieingredients.*, ingredientItem.name as ingredientName, resultItem.name as resuiltName
from recipieingredients
	 inner join items ingredientItem on recipieingredients.ingredient = ingredientItem.id
	 inner join recipies on recipieingredients.recipieID = recipies.id
	 inner join items resultItem on recipies.result = resultItem.id
where resultItem.name like 'carnage%'
