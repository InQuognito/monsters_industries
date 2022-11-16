scoreboard players set @s respawn 0

title @s title ""

gamemode adventure @s

function mi:logic/restore_items

effect give @s minecraft:instant_health 1 50 true

teleport @s[team=team1] 97.0 28.0 -125.0 270.0 0.0
teleport @s[team=team2] 184.0 28.0 -125.0 90.0 0.0
