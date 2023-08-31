execute if entity @s[type=minecraft:villager] run loot give @p[team=team1] loot mi:mobs/others/villager
execute if entity @s[type=minecraft:zombified_piglin] run loot give @p[team=team1] loot mi:resources/monster_token

kill @s

tellraw @p[team=team1] {"text":"You have reached the maximum amount of employees you can hire!","color":"red"}
scoreboard players set #team1 employees 11
