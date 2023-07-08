# is second character newline character (n)
# if yes, append newline character (\n) to current token; if no, append escape character (\) and second character to current token
data modify storage stf:data temp.parse.escape set value "\\"
execute store success score $q stf.global run data modify storage stf:data temp.parse.new set from storage stf:data temp.parse.split[1]
execute unless score $q stf.global matches 1 run function stf:parse/tokenize/escape/newline/nest
execute if score $q stf.global matches 1 run function stf:parse/tokenize/escape/newline/nest1