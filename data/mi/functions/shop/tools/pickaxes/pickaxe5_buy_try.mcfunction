function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s pickaxeLevel matches 6.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Dwarven Pickaxe","color":"dark_gray"},{"text":"!","color":"red"}]

execute if score @s pickaxeLevel matches ..4 run title @s actionbar [{"text":"You do not own an ","color":"red"},{"text":"Exalted Pickaxe","color":"gold"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 5 unless score #temp ct.paper >= #pickaxe5Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase the ","color":"red"},{"text":"Dwarven Pickaxe","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 5 unless score #temp ct.netherite >= #pickaxe5Netherite price run title @s actionbar [{"text":"You do not have enough netherite to purchase the ","color":"red"},{"text":"Dwarven Pickaxe","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 5 if score #temp ct.paper >= #pickaxe5Paper price if score #temp ct.netherite >= #pickaxe5Netherite price run function mi:shop/tools/pickaxes/pickaxe5_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
