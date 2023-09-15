kill @e[type=minecraft:item,predicate=mi:swords,distance=..5]

gamemode spectator @s
execute unless score $difficulty options matches 2 run scoreboard players set @s respawn 61

scoreboard players reset @s isDead
