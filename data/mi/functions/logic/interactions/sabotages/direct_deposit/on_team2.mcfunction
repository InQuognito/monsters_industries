scoreboard players set #team2DirectDeposit temp 1

execute at @e[type=minecraft:marker,tag=location.directDeposit.team2.spawner] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=double] replace
execute at @e[type=minecraft:marker,tag=location.directDeposit.team2.receptacle] run setblock ~ ~ ~ minecraft:red_concrete replace

# Chain
fill 171 31 -127 109 31 -127 minecraft:chain[axis=x] replace

# Barrier
fill 140 30 -128 140 31 -126 minecraft:air replace minecraft:barrier

# Team 1 Window
fill 108 28 -128 108 30 -126 minecraft:air replace

# Team 2 Window
fill 172 28 -128 172 30 -126 minecraft:air replace
