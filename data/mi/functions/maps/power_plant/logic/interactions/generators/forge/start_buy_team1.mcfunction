scoreboard players set #team1 forge 1
function mi:logic/forge/summon_resource_team1

setblock 76 14 -118 minecraft:furnace[facing=east,lit=true]{Lock:"ae88"} destroy
setblock 79 15 -121 minecraft:piston[facing=down] replace
setblock 82 14 -118 minecraft:blast_furnace[facing=west,lit=true]{Lock:"ae88"} destroy
setblock 81 13 -116 minecraft:chest[facing=west] destroy

setblock 80 15 -122 minecraft:oak_wall_sign[facing=south]{front_text:{color:"black",messages:['[""]','[{"text":"Dropper Interval:"}]','[{"text":"30s"}]','[""]']},is_waxed:1b} destroy
setblock 81 15 -122 minecraft:oak_wall_sign[facing=south]{front_text:{color:"black",messages:['[{"text":"Upgrade Interval"}]','[{"text":"[ 0 / 10 ]"}]','[{"score":{"name":"#forgeIntervalTokens","objective":"price"}},{"text":" Tokens"}]','[{"score":{"name":"#forgeIntervalNetherite","objective":"price"}},{"text":" Netherite"}]']},is_waxed:1b} destroy
setblock 81 14 -122 minecraft:oak_button[face=wall,facing=south] replace

tag @s add self
title @s actionbar {"text":"You start up the old forge.","color":"green"}
tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" started up the forge!","color":"green"}]
tag @s remove self

fill 79 14 -122 79 15 -122 minecraft:air destroy

scoreboard players operation clearPaper temp = #forgeStart price
function mi:logic/currency/apply_price

advancement grant @a[team=team1] only mi:start_forge
