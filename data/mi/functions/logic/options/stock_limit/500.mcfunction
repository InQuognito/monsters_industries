data merge block -25 8 -108 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"500"}]','[""]']},is_waxed:1b}
data merge block -27 8 -120 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"500"}]','[""]']},is_waxed:1b}

setblock -26 6 -121 minecraft:white_concrete replace
setblock -26 6 -120 minecraft:blue_concrete replace
setblock -26 6 -119 minecraft:white_concrete replace

tellraw @a [{"text":"Stock Limit: [","color":"white"},{"text":"500","color":"blue"},{"text":"]","color":"white"}]

scoreboard players set $stockLimit stock 500

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=west] replace
