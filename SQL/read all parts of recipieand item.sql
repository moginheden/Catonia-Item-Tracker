

select * from items
where name like 'carnage%'

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
