# parse formatted string into json
data modify storage stf:data temp.parse.in set string storage stf:data temp.inv.items[0].tag.display.Name 9 -2
function stf:parse/main

# merge json into name and append to inventory bin
data modify storage stf:data temp.inv.transfer set from storage stf:data temp.inv.items[0]
data modify storage stf:data temp.inv.transfer.tag.display.Name set from block ~1 ~ ~ front_text.messages[0]
execute if data storage stf:data temp.inv.transfer.tag.Enchantments run data modify storage stf:data temp.inv.transfer.tag.Enchantments append value {id:"stf:null", lvl:0s}
execute unless data storage stf:data temp.inv.transfer.tag.Enchantments run data modify storage stf:data temp.inv.transfer.tag.Enchantments set value {}
execute if score $j stf.global matches 0..26 run function stf:inventory/append/bin1
execute if score $j stf.global matches 27..35 run function stf:inventory/append/bin2