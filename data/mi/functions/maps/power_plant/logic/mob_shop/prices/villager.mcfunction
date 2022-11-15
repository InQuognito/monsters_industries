execute if entity @s[team=team1] run scoreboard players operation villager1Paper price = villagerScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation villager1Paper price = villagerScaledPaperTeam2 price

scoreboard players operation villager4Paper price = villager1Paper price
scoreboard players operation villager4Paper price *= #4 integers

scoreboard players operation villager8Paper price = villager4Paper price
scoreboard players operation villager8Paper price *= #2 integers

scoreboard players operation villager16Paper price = villager8Paper price
scoreboard players operation villager16Paper price *= #2 integers

scoreboard players operation villager32Paper price = villager16Paper price
scoreboard players operation villager32Paper price *= #2 integers

scoreboard players operation villager64Paper price = villager32Paper price
scoreboard players operation villager64Paper price *= #2 integers
