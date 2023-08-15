scoreboard players reset #team2FactoryShutdown temp

execute at @e[type=minecraft:marker,tag=location.team2.paper1] run setblock ~ ~ ~ minecraft:gold_block replace
execute at @e[type=minecraft:marker,tag=location.team2.paper1] run setblock ~ ~1 ~ minecraft:stone_pressure_plate replace
execute at @e[type=minecraft:marker,tag=location.team2.paper2] run setblock ~ ~ ~ minecraft:gold_block replace
execute at @e[type=minecraft:marker,tag=location.team2.paper2] run setblock ~ ~1 ~ minecraft:stone_pressure_plate replace

execute at @e[type=minecraft:marker,tag=location.team2.coal] run setblock ~ ~ ~ minecraft:coal_ore replace

execute at @e[type=minecraft:marker,tag=location.team2.bone] run setblock ~ ~ ~ minecraft:podzol replace
execute at @e[type=minecraft:marker,tag=location.team2.bone] run setblock ~ ~1 ~ minecraft:spruce_wall_sign[facing=south]{front_text:{color:"black",messages:['[{"text":"Like this"}]','[{"text":"headstone?"}]','[{"text":"Give us a call"}]','[{"text":"at 1-800-DEAD"}]']},is_waxed:1b} replace

execute at @e[type=minecraft:marker,tag=location.team2.spiderEye] run setblock ~ ~ ~ minecraft:detector_rail[shape=east_west] replace

execute at @e[type=minecraft:marker,tag=location.team2.gunpowder] run setblock ~ ~ ~ minecraft:coal_block replace

execute at @e[type=minecraft:marker,tag=location.team2.slimeball] run setblock ~ ~ ~ minecraft:iron_block replace
execute at @e[type=minecraft:marker,tag=location.team2.slimeball] run setblock ~ ~1 ~ minecraft:stone_pressure_plate replace

execute if score #team2 forge matches 3 run scoreboard players set #team2 forge 1

tellraw @a[team=team2] {"text":"Factory Shutdown has ended!","color":"green"}
