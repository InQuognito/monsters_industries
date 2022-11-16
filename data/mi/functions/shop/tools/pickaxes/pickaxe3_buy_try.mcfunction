function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s pickaxeLevel matches 4.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Refined Pickaxe","color":"aqua"},{"text":"!","color":"red"}]

execute unless score @s pickaxeLevel matches 4.. unless score #temp ct.paper >= #pickaxe3Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase the ","color":"red"},{"text":"Refined Pickaxe","color":"aqua"},{"text":"!","color":"red"}]
execute unless score @s pickaxeLevel matches 4.. unless score #temp ct.coal >= #pickaxe3Coal price run title @s actionbar [{"text":"You don't have enough coal to purchase the ","color":"red"},{"text":"Refined Pickaxe","color":"aqua"},{"text":"!","color":"red"}]
execute unless score @s pickaxeLevel matches 4.. if score #temp ct.paper >= #pickaxe3Paper price if score #temp ct.coal >= #pickaxe3Coal price run function mi:shop/tools/pickaxes/pickaxe3_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
