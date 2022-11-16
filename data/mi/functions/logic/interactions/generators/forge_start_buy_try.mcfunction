function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #forgeStart price run title @s actionbar {"text":"You don't have enough paper to start the forge!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp ct.paper >= #forgeStart price run function mi:maps/power_plant/logic/interactions/generators/forge/start_buy_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp ct.paper >= #forgeStart price run function mi:maps/power_plant/logic/interactions/generators/forge/start_buy_team2
