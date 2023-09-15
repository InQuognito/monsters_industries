function mi:logic/enchantments/enchants/power

execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/punch
execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_10 run function mi:logic/enchantments/enchants/flame
execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_1 run function mi:logic/enchantments/enchants/infinity

execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/punch
execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/flame
execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_5 run function mi:logic/enchantments/enchants/infinity

execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_75 run function mi:logic/enchantments/enchants/punch
execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/flame
execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_10 run function mi:logic/enchantments/enchants/infinity

execute if score #enchantmentLuck temp matches 3 run function mi:logic/enchantments/enchants/punch
execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_75 run function mi:logic/enchantments/enchants/flame
execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/infinity

function mi:logic/enchantments/finish_enchanting
