with rowNums as
(select id, itemid, ROW_NUMBER() over (partition by itemid, [location] order by id) as rowNum
from inventory)
delete 
from inventory 
where inventory.id in (select i.id from inventory i inner join rowNums on rowNums.id = i.id
where rowNums.rowNum > 1
  and i.qty = 0
  and (i.id not in (select inventoryId from mods))
  and (i.id not in (select inventoryId from inventoryHistory)))

select * from items where id = '61'
select * from inventory where itemid = '61'
select * from inventoryHistory where itemid = '61'
select * from mods where inventoryId in (select id from inventory where itemid = '61')
select * from recipies where result = '61'
select * from recipieIngredients where ingredient = '61'


select * from inventory
