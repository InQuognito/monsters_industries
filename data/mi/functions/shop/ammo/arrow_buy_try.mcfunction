function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s shop matches 10 run scoreboard players set buyMult temp 16
execute if score @s shop matches 11 run scoreboard players set buyMult temp 64

scoreboard players operation paperPrice temp = #arrow price
scoreboard players operation paperPrice temp *= buyMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar {"text":"You don't have enough paper to purchase arrows!","color":"red"}
execute if score #temp ct.paper >= paperPrice temp run function mi:shop/ammo/arrow_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
