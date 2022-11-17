execute if score clearSabotageToken temp matches 1.. run clear @s minecraft:diamond 1
execute if score clearSabotageToken temp matches 1.. run scoreboard players remove clearSabotageToken temp 1
execute if score clearSabotageToken temp matches 1.. run function mi:logic/currency/clear_sabotage_tokens
