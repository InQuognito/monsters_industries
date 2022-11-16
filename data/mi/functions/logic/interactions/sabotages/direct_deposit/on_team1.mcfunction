scoreboard players set #team1DirectDeposit temp 1

execute at @e[type=minecraft:marker,tag=location.directDeposit.team1.spawner] run setblock ~ ~ ~ minecraft:smooth_stone_slab[type=double] replace
execute at @e[type=minecraft:marker,tag=location.directDeposit.team1.receptacle] run setblock ~ ~ ~ minecraft:red_terracotta replace

# Chain
fill 109 31 -124 171 31 -124 minecraft:chain[axis=x] replace

# Barrier
fill 140 30 -125 140 31 -123 minecraft:air replace minecraft:barrier

# Team 1 Window
fill 108 28 -125 108 30 -123 minecraft:air replace

# Team 2 Window
fill 172 28 -125 172 30 -123 minecraft:air replace
