scoreboard players set $difficulty options 1
function mi:logic/options/update

tellraw @a [{"text":"Mode: [","color":"white"},{"text":"Hardened","color":"blue"},{"text":"]","color":"white"}]

setblock -32 6 -119 minecraft:white_concrete replace
setblock -32 6 -120 minecraft:blue_concrete replace
setblock -32 6 -121 minecraft:white_concrete replace

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=east] replace
