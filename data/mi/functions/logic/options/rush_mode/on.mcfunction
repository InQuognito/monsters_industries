scoreboard players set $rushMode options 1
function mi:logic/options/update

tellraw @a [{"text":"Rush Mode: [","color":"white"},{"text":"ON","color":"green"},{"text":"]","color":"white"}]

setblock -29 6 -123 minecraft:lime_concrete replace

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=south] replace
