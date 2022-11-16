function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s lighterLevel matches 6.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Flamethrower","color":"dark_gray"},{"text":"!","color":"red"}]

execute if score @s lighterLevel matches ..4 run title @s actionbar [{"text":"You do not own the ","color":"red"},{"text":"Flint and Pyrite","color":"gold"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 5 unless score #temp ct.paper >= #lighter5Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase the ","color":"red"},{"text":"Flamethrower","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 5 unless score #temp ct.netherite >= #lighter5Netherite price run title @s actionbar [{"text":"You don't have enough netherite to purchase the ","color":"red"},{"text":"Flamethrower","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 5 if score #temp ct.paper >= #lighter5Paper price if score #temp ct.netherite >= #lighter5Netherite price run function mi:shop/tools/lighters/lighter5_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
