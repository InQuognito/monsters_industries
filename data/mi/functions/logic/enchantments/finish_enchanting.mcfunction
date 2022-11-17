scoreboard players operation clearMonsterToken temp = #enchanting price
function mi:logic/currency/apply_price

advancement grant @s only mi:enchant_tool
execute if entity @s[predicate=mi:is_holding_sword_perfect] run advancement grant @s only mi:enchant_perfect
execute if entity @s[predicate=mi:is_holding_bow_perfect] run advancement grant @s only mi:enchant_perfect
execute if entity @s[predicate=mi:is_holding_crossbow_perfect] run advancement grant @s only mi:enchant_perfect
execute if entity @s[predicate=mi:is_holding_trident_perfect] run advancement grant @s only mi:enchant_perfect
