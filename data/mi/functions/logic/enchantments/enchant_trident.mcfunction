function mi:logic/enchantments/enchants/impaling
function mi:logic/enchantments/enchants/loyalty

#execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/riptide
#execute if score #enchantmentLuck temp matches 0 if predicate mi:chance_5 run function mi:logic/enchantments/enchants/channeling

#execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/riptide
#execute if score #enchantmentLuck temp matches 1 if predicate mi:chance_10 run function mi:logic/enchantments/enchants/channeling

#execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_75 run function mi:logic/enchantments/enchants/riptide
#execute if score #enchantmentLuck temp matches 2 if predicate mi:chance_25 run function mi:logic/enchantments/enchants/channeling

#execute if score #enchantmentLuck temp matches 3 run function mi:logic/enchantments/enchants/riptide
#execute if score #enchantmentLuck temp matches 3 if predicate mi:chance_50 run function mi:logic/enchantments/enchants/channeling

function mi:logic/enchantments/finish_enchanting
