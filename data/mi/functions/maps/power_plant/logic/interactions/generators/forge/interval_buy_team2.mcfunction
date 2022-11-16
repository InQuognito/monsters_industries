scoreboard players add #team2Interval forge 1

execute if score #team2Interval forge matches 1 run data merge block ~1 ~ ~ {Text3:'{"text":"28s"}'}
execute if score #team2Interval forge matches 2 run data merge block ~1 ~ ~ {Text3:'{"text":"26s"}'}
execute if score #team2Interval forge matches 3 run data merge block ~1 ~ ~ {Text3:'{"text":"24s"}'}
execute if score #team2Interval forge matches 4 run data merge block ~1 ~ ~ {Text3:'{"text":"22s"}'}
execute if score #team2Interval forge matches 5 run data merge block ~1 ~ ~ {Text3:'{"text":"20s"}'}
execute if score #team2Interval forge matches 6 run data merge block ~1 ~ ~ {Text3:'{"text":"18s"}'}
execute if score #team2Interval forge matches 7 run data merge block ~1 ~ ~ {Text3:'{"text":"16s"}'}
execute if score #team2Interval forge matches 8 run data merge block ~1 ~ ~ {Text3:'{"text":"14s"}'}
execute if score #team2Interval forge matches 9 run data merge block ~1 ~ ~ {Text3:'{"text":"12s"}'}
execute if score #team2Interval forge matches 10 run data merge block ~1 ~ ~ {Text3:'{"text":"10s"}'}

execute if score #team2Interval forge matches 1 run data merge block ~ ~ ~ {Text2:'{"text":"[ 1 / 10 ]"}'}
execute if score #team2Interval forge matches 2 run data merge block ~ ~ ~ {Text2:'{"text":"[ 2 / 10 ]"}'}
execute if score #team2Interval forge matches 3 run data merge block ~ ~ ~ {Text2:'{"text":"[ 3 / 10 ]"}'}
execute if score #team2Interval forge matches 4 run data merge block ~ ~ ~ {Text2:'{"text":"[ 4 / 10 ]"}'}
execute if score #team2Interval forge matches 5 run data merge block ~ ~ ~ {Text2:'{"text":"[ 5 / 10 ]"}'}
execute if score #team2Interval forge matches 6 run data merge block ~ ~ ~ {Text2:'{"text":"[ 6 / 10 ]"}'}
execute if score #team2Interval forge matches 7 run data merge block ~ ~ ~ {Text2:'{"text":"[ 7 / 10 ]"}'}
execute if score #team2Interval forge matches 8 run data merge block ~ ~ ~ {Text2:'{"text":"[ 8 / 10 ]"}'}
execute if score #team2Interval forge matches 9 run data merge block ~ ~ ~ {Text2:'{"text":"[ 9 / 10 ]"}'}
execute if score #team2Interval forge matches 10 run data merge block ~ ~ ~ {Text2:'{"text":"[ MAX ]"}'}
execute if score #team2Interval forge matches 10 run setblock ~ ~-1 ~ minecraft:air replace

scoreboard players operation #clearMonsterToken temp = #forgeIntervalTokens price
scoreboard players operation #clearNetherite temp = #forgeIntervalNetherite price
function mi:logic/currency/apply_price
