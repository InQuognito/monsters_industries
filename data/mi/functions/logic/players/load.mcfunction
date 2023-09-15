title @s actionbar ""

clear @s

effect clear @s
effect give @s minecraft:instant_health 1 50 true

gamemode spectator @s[team=spectators]
execute if entity @s[team=!spectators] run function mi:logic/players/load_playing

bossbar set minecraft:1 players @s
bossbar set minecraft:2 players @s
