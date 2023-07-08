## Initiate values
scoreboard players set $bin1 stf.global 0
scoreboard players set $bin2 stf.global 0
scoreboard players set $source stf.global 0
data merge storage stf:data {temp:{inv:{items:[], transfer:{}, bin1:[], bin2:[]}}}
data modify storage stf:data temp.inv.items append from entity @s Inventory[{tag:{display:{}}}]

## Filter and parse renamed items
# skip items that: have tag.Enchantments value of {}, have tag.Enchantments value of [{id:"stf:null"}], are not in slots 0-35, do not have tag.RepairCost, do not have tag.display.Name, or have name length greater than 16 chars
# for items that are not filtered, process and update CustomName
data remove storage stf:data temp.inv.items[{tag:{Enchantments:{}}}]
data remove storage stf:data temp.inv.items[{tag:{Enchantments:[{id:"stf:null"}]}}]
execute store result score $i stf.global run data get storage stf:data temp.inv.items
execute if score $i stf.global matches 1.. positioned 29999988 -64 43376 run function stf:rename/filter/main

## Merge items into inventory
execute if score $bin1 stf.global matches 1.. positioned 29999988 -64 43376 run function stf:inventory/merge/bin1
execute if score $bin2 stf.global matches 1.. positioned 29999988 -64 43376 run function stf:inventory/merge/bin2

## Remove advancement
advancement revoke @s only stf:rename