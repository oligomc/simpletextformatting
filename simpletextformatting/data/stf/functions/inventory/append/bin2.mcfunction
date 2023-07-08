scoreboard players add $bin2 stf.global 1
scoreboard players remove $j stf.global 27
execute store result storage stf:data temp.inv.transfer.Slot byte 1 run scoreboard players get $j stf.global
data modify storage stf:data temp.inv.bin2 append from storage stf:data temp.inv.transfer