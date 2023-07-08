data modify storage stf:data temp.parse.split append string storage stf:data temp.parse.in 0 1
data modify storage stf:data temp.parse.in set string storage stf:data temp.parse.in 1
scoreboard players remove $k stf.global 1
execute unless score $k stf.global matches 0 run function stf:parse/split