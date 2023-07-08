item replace block ~ ~ ~ container.0 from entity @s inventory.18
item replace block ~ ~ ~ container.1 from entity @s inventory.19
item replace block ~ ~ ~ container.2 from entity @s inventory.20
item replace block ~ ~ ~ container.3 from entity @s inventory.21
item replace block ~ ~ ~ container.4 from entity @s inventory.22
item replace block ~ ~ ~ container.5 from entity @s inventory.23
item replace block ~ ~ ~ container.6 from entity @s inventory.24
item replace block ~ ~ ~ container.7 from entity @s inventory.25
item replace block ~ ~ ~ container.8 from entity @s inventory.26
data modify block ~ ~ ~ Items append from storage stf:data temp.inv.bin2[]
loot replace entity @s inventory.18 27 mine ~ ~ ~ air{drop_contents:true}