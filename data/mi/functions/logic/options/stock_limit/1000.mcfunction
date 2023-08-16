scoreboard players set $stockLimit options 1000
function mi:logic/options/update

tellraw @a [{"text":"Stock Limit: [","color":"white"},{"text":"1000","color":"blue"},{"text":"]","color":"white"}]

setblock -26 6 -121 minecraft:white_concrete replace
setblock -26 6 -120 minecraft:white_concrete replace
setblock -26 6 -119 minecraft:blue_concrete replace

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=west] replace
