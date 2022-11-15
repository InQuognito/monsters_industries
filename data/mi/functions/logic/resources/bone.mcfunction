function mi:logic/get_bank_account_level

execute if score #bankAccount temp matches 0 run loot give @s loot mi:resources/bone
execute if score #bankAccount temp matches 1 if score @s ct.bone < #boneMax vars run scoreboard players operation @s ct.bone += @s production.bone
execute if score #bankAccount temp matches 2 if score #temp ct.bone < #boneMaxScaled vars run scoreboard players operation #add ct.bone = @s production.bone
execute if score #bankAccount temp matches 3 run scoreboard players operation #add ct.bone = @s production.bone

execute if score #bankAccount temp matches 2.. run function mi:logic/currency/add_values

function mi:logic/update_credit_card

execute if score #bankAccount temp matches 0 at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 1 if score @s ct.bone < #boneMax vars at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 2 if score #temp ct.bone < #boneMaxScaled vars at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 3 at @s run playsound minecraft:entity.item.pickup block @s

execute if predicate mi:chance_0_5 run tag @s[scores={production.bone=1}] add getBoneFortune
tellraw @s[tag=getBoneFortune] {"text":"You feel the luck empower you and double your bone output!","color":"green"}
scoreboard players set @s[tag=getBoneFortune] production.bone 2
tag @s remove getBoneFortune

execute unless score #team1FactoryShutdown temp matches 1 at @e[type=minecraft:marker,tag=location.team1.bone] run setblock ~ ~ ~ minecraft:podzol keep
execute unless score #team2FactoryShutdown temp matches 1 at @e[type=minecraft:marker,tag=location.team2.bone] run setblock ~ ~ ~ minecraft:podzol keep

scoreboard players reset @s harvest.bone
