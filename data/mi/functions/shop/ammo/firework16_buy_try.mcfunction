function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #firework16 price run title @s actionbar {"text":"You don't have enough paper to purchase 16 Fireworks!","color":"red"}
execute if score #temp ct.paper >= #firework16 price run function mi:shop/ammo/firework16_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
