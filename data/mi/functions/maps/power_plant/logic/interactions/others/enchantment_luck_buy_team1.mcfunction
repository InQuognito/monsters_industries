scoreboard players add #team1 enchantment 1

execute if score #team1 enchantment matches 1 run data merge block 136 20 -124 {front_text:{color:"black",messages:['[""]','[{"text":"[ 1 / 3 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team1 enchantment matches 2 run data merge block 136 20 -124 {front_text:{color:"black",messages:['[""]','[{"text":"[ 2 / 3 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team1 enchantment matches 3 run data merge block 136 20 -124 {front_text:{color:"black",messages:['[""]','[{"text":"[ MAX ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team1 enchantment matches 3 run setblock 136 19 -124 minecraft:air replace

tag @s add self
title @s actionbar [{"text":"You have upgraded enchantment luck!","color":"green"}]
tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has upgraded enchantment luck!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #enchantmentLuckPaper price
scoreboard players operation clearNetherite temp = #enchantmentLuckNetherite price
function mi:logic/currency/apply_price
