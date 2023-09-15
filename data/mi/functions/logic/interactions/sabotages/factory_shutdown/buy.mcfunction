scoreboard players operation clearSabotageToken temp = #factoryShutdown price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run function mi:logic/interactions/sabotages/factory_shutdown/on_team2
execute if entity @s[team=team2] run function mi:logic/interactions/sabotages/factory_shutdown/on_team1

title @s actionbar [{"text":"You have activated Factory Shutdown!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Factory Shutdown!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Factory Shutdown!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Factory Shutdown!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Factory Shutdown!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/single_use_bought
