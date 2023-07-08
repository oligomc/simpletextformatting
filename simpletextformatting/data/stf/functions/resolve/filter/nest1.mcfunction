# parse formatted string into json
data modify storage stf:data temp.parse.in set string storage stf:data temp.inv.items[0].tag.pages[0] 9 -2
function stf:parse/main

# merge json into name and append to inventory bin
data modify storage stf:data temp.inv.transfer.tag.pages append from block ~1 ~ ~ front_text.messages[0]

# loop
data remove storage stf:data temp.inv.items[0].tag.pages[0]
scoreboard players remove $r stf.global 1
execute unless score $r stf.global matches 0 run function stf:resolve/filter/nest1