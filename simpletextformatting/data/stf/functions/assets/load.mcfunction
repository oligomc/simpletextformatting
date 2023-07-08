# forceload
forceload add 29999999 43376

# entities
# forceload marker: (021653bb-7aec-43ff-ad1c-29fecd27cdf0, [I;35017659,2062304255,-1390663170,-853029392])
summon marker 29999984 -64.5 43376 {Tags:["global.forceload", "global.ignore", "global.ignore.kill", "global.ignore.gui", "global.ignore.pos"], UUID:[I;35017659,2062304255,-1390663170,-853029392], CustomName:'{"text":"Marker (Simple Text Formatting)"}'}

# blocks
setblock 29999988 -64 43376 yellow_shulker_box
setblock 29999989 -64 43376 oak_sign

# data storage
data merge storage stf:data {temp:{parse:{in:"", split:[], format: "&", escape:"\\", new:"n", tokens:[{code:"r", text:[]}], code:""}, inv:{items:[], transfer:{}, bin1:[], bin2:[], bin3:[]}}}

# import newline char
loot replace block 29999988 -64 43376 container.0 loot stf:newline
data modify storage stf:data temp.parse.newline set from block 29999988 -64 43376 Items[0].tag.pages[0]

# scoreboards
scoreboard objectives add stf.global dummy

# gamerules
gamerule maxCommandChainLength 2147483647