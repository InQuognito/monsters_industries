scoreboard players add #team1 sentryCount 1

summon minecraft:iron_golem 131 19 -126 {CustomName:'[{"text":"Sentry","color":"aqua"}]',Health:125,PersistenceRequired:1b,Attributes:[{Name:"generic.armor",Base:10d},{Name:"minecraft:generic.follow_range",Base:2048d},{Name:"minecraft:generic.max_health",Base:125d}],Team:team1}

execute if score #team1 sentryCount matches 1 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 1 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 2 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 2 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 3 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 3 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 4 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 4 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 5 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 5 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 6 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 6 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 7 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 7 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 8 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 8 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 9 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ 9 / 10 ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 10 run data merge block 79 28 -103 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"[ MAX ]"}]','[""]']},is_waxed:1b}
execute if score #team1 sentryCount matches 10 run setblock 79 29 -103 minecraft:air replace

tag @s add self
title @s actionbar [{"text":"You have deployed a sentry!","color":"green"}]
tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has deployed a sentry!","color":"green"}]
tag @s remove self

scoreboard players operation clearMonsterToken temp = #sentry price
function mi:logic/currency/apply_price
