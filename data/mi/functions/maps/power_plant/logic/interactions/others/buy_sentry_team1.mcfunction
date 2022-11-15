scoreboard players add #team1 sentryCount 1

execute if score #team1 sentryCount matches 1..9 run summon minecraft:iron_golem 131 19 -126 {CustomName:'[{"text":"Sentry","color":"aqua"}]',Health:125,PersistenceRequired:1b,Attributes:[{Name:"generic.armor",Base:10d},{Name:"minecraft:generic.follow_range",Base:2048d},{Name:"minecraft:generic.max_health",Base:125d}],Team:team1}
execute if score #team1 sentryCount matches 10 run summon minecraft:iron_golem 131 19 -126 {CustomName:'[{"text":"Veteran Sentry","color":"aqua"}]',Invulnerable:1b,PersistenceRequired:1b,Attributes:[{Name:"minecraft:generic.follow_range",Base:2048d}],Team:team1}

execute if score #team1 sentryCount matches 1 run data merge block 79 28 -103 {Text3:'{"text":"[ 1 / 10 ]"}'}
execute if score #team1 sentryCount matches 2 run data merge block 79 28 -103 {Text3:'{"text":"[ 2 / 10 ]"}'}
execute if score #team1 sentryCount matches 3 run data merge block 79 28 -103 {Text3:'{"text":"[ 3 / 10 ]"}'}
execute if score #team1 sentryCount matches 4 run data merge block 79 28 -103 {Text3:'{"text":"[ 4 / 10 ]"}'}
execute if score #team1 sentryCount matches 5 run data merge block 79 28 -103 {Text3:'{"text":"[ 5 / 10 ]"}'}
execute if score #team1 sentryCount matches 6 run data merge block 79 28 -103 {Text3:'{"text":"[ 6 / 10 ]"}'}
execute if score #team1 sentryCount matches 7 run data merge block 79 28 -103 {Text3:'{"text":"[ 7 / 10 ]"}'}
execute if score #team1 sentryCount matches 8 run data merge block 79 28 -103 {Text3:'{"text":"[ 8 / 10 ]"}'}
execute if score #team1 sentryCount matches 9 run data merge block 79 28 -103 {Text3:'{"text":"[ 9 / 10 ]"}'}
execute if score #team1 sentryCount matches 10 run data merge block 79 28 -103 {Text3:'{"text":"[ MAX ]"}'}
execute if score #team1 sentryCount matches 10 run setblock 79 29 -103 minecraft:air replace

tag @s add self
title @s actionbar [{"text":"You have deployed a sentry!","color":"green"}]
tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has deployed a sentry!","color":"green"}]
tag @s remove self

scoreboard players operation #clearToken temp = #sentry price
function mi:logic/currency/clear_tokens
