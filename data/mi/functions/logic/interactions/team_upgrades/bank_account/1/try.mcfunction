function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #bankAccount1 price run title @s actionbar [{"text":"You do not have enough paper to purchase a ","color":"red"},{"text":"Bank Account","color":"gold"},{"text":"!","color":"red"}]

execute if score #temp ct.paper >= #bankAccount1 price run function mi:logic/interactions/team_upgrades/bank_account/1/buy

execute at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/team_upgrades/reset_input
