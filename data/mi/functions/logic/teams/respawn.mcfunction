scoreboard players set @s respawn 0

title @s title ""

gamemode adventure @s

function mi:logic/restore_items

execute if entity @s[team=team1] if score #team1Plague temp matches 1 run function mi:logic/interactions/sabotages/plague/apply
execute if entity @s[team=team2] if score #team2Plague temp matches 1 run function mi:logic/interactions/sabotages/plague/apply

effect give @s minecraft:instant_health 1 50 true

teleport @s[team=team1] 97.0 28.0 -125.0 270.0 0.0
teleport @s[team=team2] 184.0 28.0 -125.0 90.0 0.0
