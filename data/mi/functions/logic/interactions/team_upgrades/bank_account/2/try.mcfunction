function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #bankAccount2 price run title @s actionbar [{"text":"You don't have enough paper to purchase a ","color":"red"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"red"}]

execute if score #temp ct.paper >= #bankAccount2 price run function mi:logic/interactions/team_upgrades/bank_account/2/buy

execute at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/team_upgrades/reset_input
