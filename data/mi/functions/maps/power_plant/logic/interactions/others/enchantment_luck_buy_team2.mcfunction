scoreboard players add #team2 enchantment 1

execute if score #team2 enchantment matches 1 run data merge block 144 20 -127 {front_text:{color:"black",messages:['[""]','[{"text":"[ 1 / 3 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2 enchantment matches 2 run data merge block 144 20 -127 {front_text:{color:"black",messages:['[""]','[{"text":"[ 2 / 3 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2 enchantment matches 3 run data merge block 144 20 -127 {front_text:{color:"black",messages:['[""]','[{"text":"[ MAX ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2 enchantment matches 3 run setblock 144 19 -127 minecraft:air replace

tag @s add self
title @s actionbar [{"text":"You have upgraded enchantment luck!","color":"green"}]
tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has upgraded enchantment luck!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #enchantmentLuckPaper price
scoreboard players operation clearNetherite temp = #enchantmentLuckNetherite price
function mi:logic/currency/apply_price
