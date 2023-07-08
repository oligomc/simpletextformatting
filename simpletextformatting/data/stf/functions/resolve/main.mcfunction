## Initiate values
scoreboard players set $bin1 stf.global 0
scoreboard players set $bin2 stf.global 0
scoreboard players set $source stf.global 1
data merge storage stf:data {temp:{inv:{items:[], transfer:{}, bin1:[], bin3:[]}}}
data modify storage stf:data temp.inv.items append from entity @s Inventory[{id:"minecraft:written_book"}]

## Filter and parse written books
# skip books that: have tag.resolved value of 1b, do not have tag.author, do not have tag.title, do not have any pages, or have slot values greater than 35
# for books that are not filtered, process and update tag.pages
data remove storage stf:data temp.inv.items[{tag:{resolved:1b}}]
execute store result score $i stf.global run data get storage stf:data temp.inv.items
execute if score $i stf.global matches 1.. positioned 29999988 -64 43376 run function stf:resolve/filter/main

## Merge items into inventory
execute if score $bin1 stf.global matches 1.. positioned 29999988 -64 43376 run function stf:inventory/merge/bin1
execute if score $bin3 stf.global matches 1.. positioned 29999988 -64 43376 run function stf:inventory/merge/bin3

## Remove advancement
advancement revoke @s only stf:resolve