execute store result score $j stf.global run data get storage stf:data temp.inv.items[0].Slot
execute store result score $r stf.global run data get storage stf:data temp.inv.items[0].tag.pages
execute if data storage stf:data temp.inv.items[0].tag.author if data storage stf:data temp.inv.items[0].tag.title if score $j stf.global matches ..35 if score $r stf.global matches 1.. run function stf:resolve/filter/nest
data remove storage stf:data temp.inv.items[0]
scoreboard players remove $i stf.global 1
execute unless score $i stf.global matches 0 run function stf:resolve/filter/main