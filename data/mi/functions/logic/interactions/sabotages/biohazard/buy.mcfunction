scoreboard players operation clearSabotageToken temp = #biohazard price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] as @e[type=#mi:hostile_mobs,team=team2] run function mi:logic/interactions/sabotages/biohazard/apply
execute if entity @s[team=team2] as @e[type=#mi:hostile_mobs,team=team1] run function mi:logic/interactions/sabotages/biohazard/apply

title @s actionbar [{"text":"You have activated Biohazard!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Biohazard!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Biohazard!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Biohazard!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Biohazard!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/single_use_bought

execute at @a run playsound minecraft:entity.generic.explode player @a
