scoreboard players set $rushMode options 0
function mi:logic/options/update

tellraw @a [{"text":"Rush Mode: [","color":"white"},{"text":"OFF","color":"red"},{"text":"]","color":"white"}]

setblock -29 6 -123 minecraft:red_concrete replace

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=south] replace
