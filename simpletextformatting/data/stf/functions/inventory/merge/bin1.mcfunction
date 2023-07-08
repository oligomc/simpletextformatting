data modify block ~ ~ ~ Items set from entity @s Inventory
data modify block ~ ~ ~ Items append from storage stf:data temp.inv.bin1[]
loot replace entity @s hotbar.0 27 mine ~ ~ ~ air{drop_contents:true}