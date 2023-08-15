execute if entity @s[team=team1] run scoreboard players set #team1Swiftness temp 3
execute if entity @s[team=team2] run scoreboard players set #team2Swiftness temp 3

data merge block ^ ^1 ^ {front_text:{color:"black",messages:['[""]','[{"text":"[ MAX ]"}]','[""]','[""]']},is_waxed:1b}
function mi:logic/interactions/team_upgrades/bought_max

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Swiftness 3","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Swiftness 3","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Swiftness 3","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #swiftness3 price
function mi:logic/currency/apply_price
