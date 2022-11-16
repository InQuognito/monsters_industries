function mi:logic/interactions/sabotages/prepare_input

execute unless score #sabotageTokenCount temp >= #factoryShutdown price run title @s actionbar [{"text":"You don't have enough sabotage tokens to purchase ","color":"red"},{"text":"Factory Shutdown","color":"white"},{"text":"!","color":"red"}]

execute if score #sabotageTokenCount temp >= #factoryShutdown price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/sabotages/factory_shutdown/buy

execute unless score #sabotageTokenCount temp >= #factoryShutdown price if entity @s[team=team1] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:birch_button[face=wall,facing=west] replace
execute unless score #sabotageTokenCount temp >= #factoryShutdown price if entity @s[team=team2] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:spruce_button[face=wall,facing=east] replace
