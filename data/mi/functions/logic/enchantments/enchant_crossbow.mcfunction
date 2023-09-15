function mi:logic/enchantments/enchants/quick_charge

execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/piercing
execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_5 run function mi:logic/enchantments/enchants/multishot

execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/piercing
execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_10 run function mi:logic/enchantments/enchants/multishot

execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_75 run function mi:logic/enchantments/enchants/piercing
execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/multishot

execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/piercing
execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/multishot

function mi:logic/enchantments/finish_enchanting
