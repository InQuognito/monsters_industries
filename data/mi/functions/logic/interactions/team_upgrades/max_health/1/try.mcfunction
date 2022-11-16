function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #maxHealth1 price run title @s actionbar [{"text":"You don't have enough paper to purchase ","color":"red"},{"text":"Max Health 1","color":"gold"},{"text":"!","color":"red"}]

execute if score #temp ct.paper >= #maxHealth1 price run function mi:logic/interactions/team_upgrades/max_health/1/buy

execute at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/team_upgrades/reset_input
