execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_10 run enchant @s riptide 3
execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_25 run enchant @s riptide 2

execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_25 run enchant @s riptide 3
execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_50 run enchant @s riptide 2

execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_50 run enchant @s riptide 3
execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_75 run enchant @s riptide 2

execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_75 run enchant @s riptide 3
execute if score #enchantmentLuck temp matches 3 run enchant @s riptide 2

enchant @s riptide 1
