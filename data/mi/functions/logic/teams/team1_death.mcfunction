scoreboard players operation $team2 stock += #kill vars

execute if score $difficulty mode matches 2 run scoreboard players add #team1Dead temp 1
execute if score $difficulty mode matches 2 if score #team1Dead temp >= #team1Amount temp run function mi:logic/teams/team2_win

kill @e[type=minecraft:item,predicate=mi:swords,distance=..5]

gamemode spectator @s
execute unless score $difficulty mode matches 2 run scoreboard players set @s respawn 61

scoreboard players reset @a[scores={isDead=1..}] isDead

loot give @r[team=team2] loot mi:resources/sabotage_token
