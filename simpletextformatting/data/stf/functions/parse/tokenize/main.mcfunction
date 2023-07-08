# is first character a formatting character (&)
# if yes, check if second character is a valid formatting code; if no, check if first character is escape character (\)
execute store success score $m stf.global run data modify storage stf:data temp.parse.format set from storage stf:data temp.parse.split[0]
execute unless score $m stf.global matches 1 run function stf:parse/tokenize/format/main
execute if score $m stf.global matches 1 run function stf:parse/tokenize/nest

# loop
execute unless score $l stf.global matches ..0 run function stf:parse/tokenize/main