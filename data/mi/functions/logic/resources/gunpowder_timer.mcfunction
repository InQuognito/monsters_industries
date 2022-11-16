scoreboard players operation #gunpowderTimer temp = #60 integers
scoreboard players operation #gunpowderTimer temp /= @s lighterLevel
execute if entity @s[team=team1] run scoreboard players operation #team1Gunpowder timer = #gunpowderTimer temp
execute if entity @s[team=team2] run scoreboard players operation #team2Gunpowder timer = #gunpowderTimer temp

tag @s add harvest.gunpowder
scoreboard players reset @s harvest.gunpowder
