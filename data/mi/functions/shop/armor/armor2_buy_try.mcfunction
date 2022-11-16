function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s armorLevel matches 2.. run title @s actionbar [{"text":"You already own ","color":"red"},{"text":"Chainmail Armor","color":"gray"},{"text":"!","color":"red"}]

execute if score @s armorLevel matches ..1 unless score #temp ct.paper >= #armor2Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase ","color":"red"},{"text":"Chainmail Armor","color":"gray"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..1 unless score #temp ct.gunpowder >= #armor2Gunpowder price run title @s actionbar [{"text":"You don't have enough gunpowder to purchase ","color":"red"},{"text":"Chainmail Armor","color":"gray"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..1 if score #temp ct.paper >= #armor2Paper price if score #temp ct.gunpowder >= #armor2Gunpowder price run function mi:shop/armor/armor2_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
