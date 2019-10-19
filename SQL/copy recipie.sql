insert into recipies
select newResult.id, resultQty, profession, crafterLevel, [hours]
--, newResult.name, (select count(*) from recipies where result = newResult.id) as numRecipies
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join items newResult on newResult.id in (select id from items where type = 'Weapon - 2H')
where newResult.id != oldResult.id
  and oldResult.type = 'Weapon - 2H'
  and newResult.name not like '%, small%'
  and newResult.name not like 'Warhammer, redsteel'
  and newResult.name not like 'Diamond-tiped heavy pick'

insert into recipieIngredients
select newRecipie.id as recipieID, newIngredient.id as ingredient, recipieIngredients.qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], newIngredient.name as [new ingredient]
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newIngredient on newIngredient.name = case when oldIngredient.name = 'x' then 'y' else oldIngredient.name end
	 inner join items newResult on newResult.id in (select id from items where type = 'Weapon - 2H')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where oldResult.type = 'Weapon - 2H'
  and newResult.id != oldResult.id
  and oldResult.name = 'Greatsword'