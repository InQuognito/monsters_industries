scoreboard players set #team2 forge 1
function mi:logic/forge/summon_resource_team2

setblock 204 14 -133 minecraft:furnace[facing=west,lit=true]{Lock:"ae88"} destroy
setblock 201 15 -130 minecraft:piston[facing=down] replace
setblock 198 14 -133 minecraft:blast_furnace[facing=east,lit=true]{Lock:"ae88"} destroy
setblock 199 13 -135 minecraft:chest[facing=east] destroy

setblock 200 15 -129 minecraft:oak_wall_sign[facing=north]{front_text:{color:"black",messages:['[""]','[{"text":"Dropper Interval:"}]','[{"text":"30s"}]','[""]']},is_waxed:1b} destroy
setblock 199 15 -129 minecraft:oak_wall_sign[facing=north]{front_text:{color:"black",messages:['[{"text":"Upgrade Interval"}]','[{"text":"[ 0 / 10 ]"}]','[{"score":{"name":"#forgeIntervalTokens","objective":"price"}},{"text":" Tokens"}]','[{"score":{"name":"#forgeIntervalNetherite","objective":"price"}},{"text":" Netherite"}]']},is_waxed:1b} destroy
setblock 199 14 -129 minecraft:oak_button[face=wall,facing=north] replace

tag @s add self
title @s actionbar {"text":"You start up the old forge.","color":"green"}
tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" started up the forge!","color":"green"}]
tag @s remove self

fill 201 14 -129 201 15 -129 minecraft:air destroy

scoreboard players operation clearPaper temp = #forgeStart price
function mi:logic/currency/apply_price

advancement grant @a[team=team2] only mi:start_forge
