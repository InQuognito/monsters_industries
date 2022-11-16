function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #dragonsBreath price run title @s actionbar {"text":"You don't have enough paper to purchase a Dragon's Breath!","color":"red"}
execute if score #temp ct.paper >= #dragonsBreath price run function mi:shop/weapons/dragons_breath_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
