function mi:logic/interactions/sabotages/prepare_input

execute unless score #sabotageTokenCount temp >= #plague price run title @s actionbar [{"text":"You don't have enough sabotage tokens to purchase the ","color":"red"},{"text":"Plague","color":"white"},{"text":"!","color":"red"}]

execute if score #sabotageTokenCount temp >= #plague price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/sabotages/plague/buy

execute unless score #sabotageTokenCount temp >= #plague price if entity @s[team=team1] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:birch_button[face=wall,facing=west] replace
execute unless score #sabotageTokenCount temp >= #plague price if entity @s[team=team2] at @e[type=minecraft:marker,tag=inputs.objectMarker] run setblock ^ ^ ^ minecraft:spruce_button[face=wall,facing=east] replace
