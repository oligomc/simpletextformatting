data modify storage stf:data temp.parse.code set from storage stf:data temp.parse.tokens[-1].code
function stf:parse/interpret/decode
data remove storage stf:data temp.parse.tokens[-1]
scoreboard players remove $y stf.global 1
execute unless score $y stf.global matches 0 run function stf:parse/interpret/main