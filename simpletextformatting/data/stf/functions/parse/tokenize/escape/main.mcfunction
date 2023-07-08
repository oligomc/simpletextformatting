# is second character an escape character (\)
# if yes, check if third character is a formatting character (&); if no, check if second character is newline character (n)
execute store success score $o stf.global run data modify storage stf:data temp.parse.escape set from storage stf:data temp.parse.split[1]
execute unless score $o stf.global matches 1 run function stf:parse/tokenize/escape/format/main
execute if score $o stf.global matches 1 run function stf:parse/tokenize/escape/newline/main