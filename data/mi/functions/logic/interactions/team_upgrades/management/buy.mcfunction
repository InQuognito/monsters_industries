execute if entity @s[team=team1] run function mi:logic/interactions/team_upgrades/management/team1
execute if entity @s[team=team2] run function mi:logic/interactions/team_upgrades/management/team2

data merge block ^ ^1 ^ {Text2:'{"text":"[ MAX ]"}',Text3:''}
function mi:logic/interactions/team_upgrades/bought_max

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Management","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Management","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Management","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation #clearToken temp = #management price
function mi:logic/currency/apply_price
