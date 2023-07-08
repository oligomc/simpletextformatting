# create new token
data modify storage stf:data temp.parse.tokens append value {code:"", text:[]}
data modify storage stf:data temp.parse.tokens[-1].code set from storage stf:data temp.parse.split[1]
data remove storage stf:data temp.parse.split[0]
data remove storage stf:data temp.parse.split[0]
scoreboard players remove $l stf.global 2