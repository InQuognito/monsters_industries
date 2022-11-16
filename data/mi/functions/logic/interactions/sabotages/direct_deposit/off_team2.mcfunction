scoreboard players reset #team2DirectDeposit temp
scoreboard players reset #team2DirectDeposit timer

# Chain
fill 171 31 -127 109 31 -127 minecraft:air replace

# Barrier
fill 140 30 -128 140 31 -126 minecraft:barrier replace

# Team 1 Window
fill 108 28 -128 108 29 -126 minecraft:white_stained_glass_pane[north=true,south=true] replace
fill 108 30 -128 108 30 -126 minecraft:light_blue_stained_glass_pane[north=true,south=true] replace

# Team 2 Window
fill 172 28 -128 172 28 -126 minecraft:black_stained_glass_pane[north=true,south=true] replace
fill 172 29 -128 172 30 -126 minecraft:red_stained_glass_pane[north=true,south=true] replace

execute unless score #team1DirectDeposit temp matches 1 unless score #team2DirectDeposit temp matches 1 run teleport @a[team=team1,x=108,y=28,z=-130,dx=3,dy=2,dz=9] 97.0 28.0 -125.0 270.0 0.0
execute unless score #team1DirectDeposit temp matches 1 unless score #team2DirectDeposit temp matches 1 run teleport @a[team=team2,x=169,y=28,z=-130,dx=3,dy=2,dz=9] 184.0 28.0 -125.0 90.0 0.0
