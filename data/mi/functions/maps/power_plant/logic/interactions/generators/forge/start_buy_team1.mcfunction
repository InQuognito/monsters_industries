scoreboard players set #team1 forge 1
function mi:logic/forge/summon_resource_team1

setblock 76 14 -118 minecraft:furnace[facing=east,lit=true]{Lock:"ae88"} destroy
setblock 79 15 -121 minecraft:piston[facing=down] replace
setblock 82 14 -118 minecraft:blast_furnace[facing=west,lit=true]{Lock:"ae88"} destroy
setblock 81 13 -116 minecraft:chest[facing=west] destroy

setblock 80 15 -122 minecraft:oak_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Dropper Interval:"}',Text3:'{"text":"30s"}'} destroy
setblock 81 15 -122 minecraft:oak_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Upgrade Interval"}',Text2:'{"text":"[ 0 / 10 ]"}',Text3:'[{"score":{"name":"#forgeIntervalTokens","objective":"price"}},{"text":" Tokens"}]',Text4:'[{"score":{"name":"#forgeIntervalNetherite","objective":"price"}},{"text":" Netherite"}]'} destroy
setblock 81 14 -122 minecraft:oak_button[face=wall,facing=south] replace

tag @s add self
title @s actionbar {"text":"You start up the old forge.","color":"green"}
tellraw @a[team=team1,tag=!self] {"text":"Your teammate started up the forge!","color":"green"}
tag @s remove self

fill 79 14 -122 79 15 -122 minecraft:air destroy

scoreboard players operation #clearPaper temp = #forgeStart price
function mi:logic/currency/apply_price

advancement grant @a[team=team1] only mi:start_forge
