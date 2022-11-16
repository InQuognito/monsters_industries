function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #bankAccount3 price run title @s actionbar [{"text":"You don't have enough paper to purchase an ","color":"red"},{"text":"Unlimited Bank Account","color":"gold"},{"text":"!","color":"red"}]

execute if score #temp ct.paper >= #bankAccount3 price run function mi:logic/interactions/team_upgrades/bank_account/3/buy

execute unless score #temp ct.paper >= #bankAccount3 price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/team_upgrades/reset_input
