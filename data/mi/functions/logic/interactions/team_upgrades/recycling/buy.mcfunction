execute if entity @s[team=team1] run scoreboard players set @a[team=team1] recycling 1
execute if entity @s[team=team2] run scoreboard players set @a[team=team2] recycling 1

data merge block ^ ^1 ^ {front_text:{color:"black",messages:['[""]','[{"text":"[ MAX ]"}]','[""]','[""]']},is_waxed:1b}
function mi:logic/interactions/team_upgrades/bought_max

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Recycling","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Recycling","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Recycling","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #recycling price
function mi:logic/currency/apply_price
