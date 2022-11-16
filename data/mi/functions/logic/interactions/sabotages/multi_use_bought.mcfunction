execute if entity @s[team=team1] run setblock ^ ^ ^-1 minecraft:yellow_concrete replace
execute if entity @s[team=team2] run setblock ^ ^ ^-1 minecraft:yellow_terracotta replace
setblock ^ ^ ^ minecraft:air replace

execute if entity @s[team=team1] run summon minecraft:marker ^ ^ ^ {Tags:["sabotageCooldown","team1"],Rotation:[90f,0f]}
execute if entity @s[team=team2] run summon minecraft:marker ^ ^ ^ {Tags:["sabotageCooldown","team2"],Rotation:[-90f,0f]}
