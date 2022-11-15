function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #sniper16 price run title @s actionbar {"text":"You do not have enough paper to purchase 16 Snipers!","color":"red"}
execute if score #temp ct.paper >= #sniper16 price run function mi:shop/ammo/sniper16_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
