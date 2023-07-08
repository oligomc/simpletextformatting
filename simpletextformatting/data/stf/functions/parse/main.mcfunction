# initialize
data merge storage stf:data {temp:{parse:{split:[], format:"&", escape:"\\", tokens:[{code:"r", text:[]}]}}}
data modify block ~1 ~ ~ front_text.messages set value ['{"text":""}', '{"text":""}', '{"text":""}', '{"text":""}']
execute store result score $k stf.global store result score $l stf.global run data get storage stf:data temp.parse.in

# split
function stf:parse/split

# tokenize
function stf:parse/tokenize/main

# interpret
execute store result score $y stf.global run data get storage stf:data temp.parse.tokens
function stf:parse/interpret/main