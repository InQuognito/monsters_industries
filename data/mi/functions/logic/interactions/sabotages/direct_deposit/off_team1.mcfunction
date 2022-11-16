scoreboard players reset #team1DirectDeposit temp
scoreboard players reset #team1DirectDeposit timer

# Chain
fill 109 31 -124 171 31 -124 minecraft:air replace

# Barrier
fill 140 30 -125 140 31 -123 minecraft:barrier replace

# Team 1 Window
fill 108 28 -125 108 29 -123 minecraft:white_stained_glass_pane[north=true,south=true] replace
fill 108 30 -125 108 30 -123 minecraft:light_blue_stained_glass_pane[north=true,south=true] replace

# Team 2 Window
fill 172 28 -125 172 28 -123 minecraft:black_stained_glass_pane[north=true,south=true] replace
fill 172 29 -125 172 30 -123 minecraft:red_stained_glass_pane[north=true,south=true] replace

execute unless score #team1DirectDeposit temp matches 1 unless score #team2DirectDeposit temp matches 1 run teleport @a[team=team1,x=108,y=28,z=-130,dx=3,dy=2,dz=9] 97.0 28.0 -125.0 270.0 0.0
execute unless score #team1DirectDeposit temp matches 1 unless score #team2DirectDeposit temp matches 1 run teleport @a[team=team2,x=169,y=28,z=-130,dx=3,dy=2,dz=9] 184.0 28.0 -125.0 90.0 0.0
