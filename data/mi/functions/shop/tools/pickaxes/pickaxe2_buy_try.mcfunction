function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s pickaxeLevel matches 3.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Functional Pickaxe","color":"white"},{"text":"!","color":"red"}]

execute unless score @s pickaxeLevel matches 3.. unless score #temp ct.paper >= #pickaxe2Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase the ","color":"red"},{"text":"Functional Pickaxe","color":"white"},{"text":"!","color":"red"}]
execute unless score @s pickaxeLevel matches 3.. unless score #temp ct.coal >= #pickaxe2Coal price run title @s actionbar [{"text":"You don't have enough coal to purchase the ","color":"red"},{"text":"Functional Pickaxe","color":"white"},{"text":"!","color":"red"}]
execute unless score @s pickaxeLevel matches 3.. if score #temp ct.paper >= #pickaxe2Paper price if score #temp ct.coal >= #pickaxe2Coal price run function mi:shop/tools/pickaxes/pickaxe2_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
