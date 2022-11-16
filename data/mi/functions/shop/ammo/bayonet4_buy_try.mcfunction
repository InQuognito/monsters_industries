function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #bayonet4 price run title @s actionbar {"text":"You don't have enough paper to purchase 4 Bayonets!","color":"red"}
execute if score #temp ct.paper >= #bayonet4 price run function mi:shop/ammo/bayonet4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
