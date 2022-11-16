function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s armorLevel matches 3.. run title @s actionbar [{"text":"You already own ","color":"red"},{"text":"Iron Armor","color":"white"},{"text":"!","color":"red"}]

execute if score @s armorLevel matches ..2 unless score #temp ct.paper >= #armor3Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase ","color":"red"},{"text":"Iron Armor","color":"white"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..2 unless score #temp ct.gunpowder >= #armor3Gunpowder price run title @s actionbar [{"text":"You don't have enough gunpowder to purchase ","color":"red"},{"text":"Iron Armor","color":"white"},{"text":"!","color":"red"}]
execute if score @s armorLevel matches ..2 if score #temp ct.paper >= #armor3Paper price if score #temp ct.gunpowder >= #armor3Gunpowder price run function mi:shop/armor/armor3_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
