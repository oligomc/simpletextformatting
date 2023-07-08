# advancements
advancement revoke @a only stf:rename
advancement revoke @a only stf:resolve

# data storages
data remove storage stf:data temp

# blocks
fill 29999988 -64 43376 29999989 -64 43376 barrier

# scoreboards
scoreboard objectives remove stf.global

# forceload
execute as 021653bb-7aec-43ff-ad1c-29fecd27cdf0 at @s align xyz run function stf:assets/forceload