scoreboard players set $difficulty options 0
function mi:logic/options/update

tellraw @a [{"text":"Mode: [","color":"white"},{"text":"Casual","color":"blue"},{"text":"]","color":"white"}]

setblock -32 6 -119 minecraft:blue_concrete replace
setblock -32 6 -120 minecraft:white_concrete replace
setblock -32 6 -121 minecraft:white_concrete replace

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=east] replace
