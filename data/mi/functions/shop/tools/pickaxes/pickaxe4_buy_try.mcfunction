function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s pickaxeLevel matches 5.. run title @s actionbar [{"text":"You already own an ","color":"red"},{"text":"Exalted Pickaxe","color":"gold"},{"text":"!","color":"red"}]

execute if score @s pickaxeLevel matches ..3 run title @s actionbar [{"text":"You do not own the ","color":"red"},{"text":"Refined Pickaxe","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 4 unless score #temp ct.paper >= #pickaxe4Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase an ","color":"red"},{"text":"Exalted Pickaxe","color":"gold"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 4 unless score #tokenCount temp >= #pickaxe4Token price run title @s actionbar [{"text":"You do not have enough tokens to purchase an ","color":"red"},{"text":"Exalted Pickaxe","color":"gold"},{"text":"!","color":"red"}]
execute if score @s pickaxeLevel matches 4 if score #temp ct.paper >= #pickaxe4Paper price if score #tokenCount temp >= #pickaxe4Token price run function mi:shop/tools/pickaxes/pickaxe4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
