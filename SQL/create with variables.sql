DECLARE @metal varchar(max)
DECLARE @gem varchar(max)
DECLARE @gemSize varchar(max)
DECLARE @cost varchar(max)
DECLARE @element varchar(max)
DECLARE @elementAmount varchar(max)
DECLARE @elementHeal varchar(max)

set @metal = 'Brass'
set @elementAmount = '5'
set @elementHeal = '10'
set @gem = 'Soul'
set @element = 'All Elements'
set @gemSize = 'Gem'
set @cost = '50350'


insert into items
select replace(name, 'Iron', @metal + ' ' + @gem) as name, 'Adds 10lbs and grants ' + @element + ' resist ' + @elementAmount + '.  Once per day when hit with a ' + @element + ' spell you gain ' + @elementHeal + 'HP.' as description, @cost as cost, type, 'Jewelcrafting' as subtype from items
where name like 'iron - light armor'

insert into recipies
select newResult.id, resultQty, 'Jewelcrafter' as profession, crafterLevel, [hours]
--, newResult.name, (select count(*) from recipies where result = newResult.id) as numRecipies
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join items newResult on newResult.id in (select id from items where name like @metal + ' ' + @gem + ' - Light Armor')
where newResult.id != oldResult.id
  and oldResult.name like 'Iron - Light Armor'

insert into recipieIngredients
select newRecipie.id as recipieID, newIngredient.id as ingredient, case when newIngredient.name = @gem + ' ' + @gemSize then 1 else recipieIngredients.qty end as qty
--, oldResult.name as [old result], oldIngredient.name as [old ingredient], newResult.name as [new result], newIngredient.name as [new ingredient]
from recipies oldRecipie
	 inner join items oldResult on oldRecipie.result = oldResult.id
	 inner join recipieIngredients on recipieIngredients.recipieID = oldRecipie.id
	 inner join items oldIngredient on recipieIngredients.ingredient = oldIngredient.id
	 inner join items newIngredient on newIngredient.name in(case when oldIngredient.name = 'Iron Ingot' then @metal + ' Ingot' else oldIngredient.name end, @gem + ' ' + @gemSize)
	 inner join items newResult on newResult.id in (select id from items where name like @metal + ' ' + @gem + ' - Light Armor')
	 inner join recipies newRecipie on newRecipie.result = newResult.id
where newResult.id != oldResult.id
  and oldResult.name like 'Iron - Light Armor'