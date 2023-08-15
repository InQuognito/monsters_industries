scoreboard players add #team2Interval forge 1

execute if score #team2Interval forge matches 1 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"28s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 2 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"26s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 3 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"24s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 4 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"22s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 5 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"20s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 6 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"18s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 7 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"16s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 8 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"14s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 9 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"12s"}]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 10 run data merge block ~1 ~ ~ {front_text:{color:"black",messages:['[""]','[""]','[{"text":"10s"}]','[""]']},is_waxed:1b}

execute if score #team2Interval forge matches 1 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 1 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 2 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 2 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 3 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 3 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 4 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 4 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 5 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 5 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 6 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 6 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 7 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 7 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 8 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 8 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 9 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ 9 / 10 ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 10 run data merge block ~ ~ ~ {front_text:{color:"black",messages:['[""]','[{"text":"[ MAX ]"}]','[""]','[""]']},is_waxed:1b}
execute if score #team2Interval forge matches 10 run setblock ~ ~-1 ~ minecraft:air replace

scoreboard players operation clearMonsterToken temp = #forgeIntervalTokens price
scoreboard players operation clearNetherite temp = #forgeIntervalNetherite price
function mi:logic/currency/apply_price
