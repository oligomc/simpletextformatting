# append first character to current token
data modify storage stf:data temp.parse.escape set value "\\"
data modify storage stf:data temp.parse.tokens[-1].text append from storage stf:data temp.parse.split[0]
data remove storage stf:data temp.parse.split[0]
scoreboard players remove $l stf.global 1