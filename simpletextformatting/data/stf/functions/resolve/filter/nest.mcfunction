# init
data modify storage stf:data temp.inv.transfer set from storage stf:data temp.inv.items[0]
data modify storage stf:data temp.inv.transfer.tag.pages set value []

# parse formatted string into json
function stf:resolve/filter/nest1

# merge json into name and append to inventory bin
data modify storage stf:data temp.inv.transfer.tag.resolved set value 1b
execute if score $j stf.global matches 0..26 run function stf:inventory/append/bin1
execute if score $j stf.global matches -106 run function stf:inventory/append/bin3