function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s armorLevel matches 4.. run title @s actionbar [{"text":"You already own ","color":"red"},{"text":"Diamond Armor","color":"aqua"},{"text":"!","color":"red"}]

execute if score @s armorLevel matches ..3 unless score #temp ct.paper >= #armor4Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase ","color":"red"},{"text":"Diamond Armor","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..3 unless score #temp ct.coal >= #armor4Coal price run title @s actionbar [{"text":"You don't have enough coal to purchase ","color":"red"},{"text":"Diamond Armor","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..3 unless score #temp ct.gunpowder >= #armor4Gunpowder price run title @s actionbar [{"text":"You don't have enough gunpowder to purchase ","color":"red"},{"text":"Diamond Armor","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..3 if score #temp ct.paper >= #armor4Paper price if score #temp ct.coal >= #armor4Coal price if score #temp ct.gunpowder >= #armor4Gunpowder price run function mi:shop/armor/armor4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
