function mi:logic/interactions/sabotages/prepare_input

execute unless score #sabotageTokenCount temp >= #cloakingField price run title @s actionbar [{"text":"You don't have enough sabotage tokens to purchase ","color":"red"},{"text":"Cloaking Field","color":"white"},{"text":"!","color":"red"}]

execute if score #sabotageTokenCount temp >= #cloakingField price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/sabotages/cloaking_field/buy

execute unless score #sabotageTokenCount temp >= #cloakingField price if entity @s[team=team1] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:birch_button[face=wall,facing=west] replace
execute unless score #sabotageTokenCount temp >= #cloakingField price if entity @s[team=team2] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:spruce_button[face=wall,facing=east] replace
