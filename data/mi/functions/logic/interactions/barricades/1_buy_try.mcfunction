function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #barricade1 price run title @s actionbar {"text":"You do not have enough paper to clear this barricade!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp ct.paper >= #barricade1 price run function mi:maps/power_plant/logic/interactions/barricades/1/buy_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp ct.paper >= #barricade1 price run function mi:maps/power_plant/logic/interactions/barricades/1/buy_team2
