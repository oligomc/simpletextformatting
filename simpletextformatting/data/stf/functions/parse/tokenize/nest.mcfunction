# is first character an escape character (\)
# if yes, check if second character is an escape character (\); if no, append first character to current token 
data modify storage stf:data temp.parse.format set value "&"
execute store success score $n stf.global run data modify storage stf:data temp.parse.escape set from storage stf:data temp.parse.split[0]
execute unless score $n stf.global matches 1 run function stf:parse/tokenize/escape/main
execute if score $n stf.global matches 1 run function stf:parse/tokenize/nest1