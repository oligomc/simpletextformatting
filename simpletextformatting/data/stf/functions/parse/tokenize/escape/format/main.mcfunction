# is third character a formatting character (&)
# if yes, append formatting character (&) to current token; if no, append escape character (\) and third character to current token
execute store success score $p stf.global run data modify storage stf:data temp.parse.format set from storage stf:data temp.parse.split[2]
execute unless score $p stf.global matches 1 run function stf:parse/tokenize/escape/format/nest
execute if score $p stf.global matches 1 run function stf:parse/tokenize/escape/format/nest1