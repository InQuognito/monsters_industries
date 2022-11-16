execute if score #clearMonsterToken temp matches 1.. run clear @s minecraft:gold_ingot 1
execute if score #clearMonsterToken temp matches 1.. run scoreboard players remove #clearMonsterToken temp 1
execute if score #clearMonsterToken temp matches 1.. run function mi:logic/currency/clear_monster_tokens
