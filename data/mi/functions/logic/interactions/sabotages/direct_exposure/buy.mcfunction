scoreboard players operation clearSabotageToken temp = #directExposure price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] as @a[team=team2] at @e[type=minecraft:marker,tag=location.directExposure.team2] run teleport @s ~ ~ ~
execute if entity @s[team=team2] as @a[team=team1] at @e[type=minecraft:marker,tag=location.directExposure.team1] run teleport @s ~ ~ ~
execute if entity @s[team=team1] as @a[team=team2] run effect give @s minecraft:slow_falling 3 10 true
execute if entity @s[team=team2] as @a[team=team1] run effect give @s minecraft:slow_falling 3 10 true

title @s actionbar [{"text":"You have activated Direct Exposure!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Direct Exposure!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Direct Exposure!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Direct Exposure!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Direct Exposure!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/multi_use_bought
