execute unless entity @s[predicate=mi:is_holding_enchantable] run title @s actionbar {"text":"You are not holding a valid item to enchant!","color":"red"}
execute if entity @s[predicate=mi:is_holding_enchanted] run title @s actionbar {"text":"This item is already enchanted!","color":"red"}

execute store result score #monsterTokenCount temp run clear @s gold_ingot 0

execute if entity @s[predicate=mi:is_holding_enchantable] unless entity @s[predicate=mi:is_holding_enchanted] unless score #monsterTokenCount temp >= #enchanting price run title @s actionbar {"text":"You don't have enough tokens to enchant!","color":"red"}
execute if entity @s[predicate=mi:is_holding_enchantable] unless entity @s[predicate=mi:is_holding_enchanted] if score #monsterTokenCount temp >= #enchanting price run tag @s add priceApproved

function mi:logic/enchantments/get_luck_level

execute as @s[tag=priceApproved,predicate=mi:is_holding_sword] run function mi:logic/enchantments/enchant_sword
execute as @s[tag=priceApproved,predicate=mi:is_holding_bow] run function mi:logic/enchantments/enchant_bow
execute as @s[tag=priceApproved,predicate=mi:is_holding_crossbow] run function mi:logic/enchantments/enchant_crossbow
execute as @s[tag=priceApproved,predicate=mi:is_holding_trident] run function mi:logic/enchantments/enchant_trident

tag @s remove priceApproved
