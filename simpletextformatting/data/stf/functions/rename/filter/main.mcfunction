execute store result score $j stf.global run data get storage stf:data temp.inv.items[0].Slot
execute store result score $k stf.global run data get storage stf:data temp.inv.items[0].tag.display.Name
execute if data storage stf:data temp.inv.items[0].tag.RepairCost if data storage stf:data temp.inv.items[0].tag.display.Name if score $j stf.global matches 0..35 if score $k stf.global matches 11..61 run function stf:rename/filter/nest
data remove storage stf:data temp.inv.items[0]
scoreboard players remove $i stf.global 1
execute unless score $i stf.global matches 0 run function stf:rename/filter/main