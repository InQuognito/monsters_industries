function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s spadeLevel matches 6.. run title @s actionbar [{"text":"You already own a ","color":"red"},{"text":"Gravedigger's Shovel","color":"dark_gray"},{"text":"!","color":"red"}]

execute if score @s spadeLevel matches ..4 run title @s actionbar [{"text":"You do not own an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 5 unless score #temp ct.paper >= #spade5Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase a ","color":"red"},{"text":"Gravedigger's Shovel","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 5 unless score #temp ct.netherite >= #spade5Netherite price run title @s actionbar [{"text":"You do not have enough netherite to purchase a ","color":"red"},{"text":"Gravedigger's Shovel","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 5 if score #temp ct.paper >= #spade5Paper price if score #temp ct.netherite >= #spade5Netherite price run function mi:shop/tools/spades/spade5_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
