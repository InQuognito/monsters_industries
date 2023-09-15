gamemode adventure @s

scoreboard players set @s production.paper 1
scoreboard players set @s production.coal 1
scoreboard players set @s production.bone 1
scoreboard players set @s production.gunpowder 1
scoreboard players set @s production.spiderEye 1

scoreboard players set @s swordLevel 0
scoreboard players set @s armorLevel 0
scoreboard players set @s pickaxeLevel 1
scoreboard players set @s spadeLevel 1
scoreboard players set @s lighterLevel 1

scoreboard players set @s ct.paper 0
scoreboard players set @s ct.coal 0
scoreboard players set @s ct.bone 0
scoreboard players set @s ct.gunpowder 0
scoreboard players set @s ct.spiderEye 0
scoreboard players set @s ct.slimeball 0
scoreboard players set @s ct.netherite 0

attribute @s minecraft:generic.attack_damage base set 2.0
attribute @s minecraft:generic.attack_speed base set 4.0

function mi:logic/players/items
