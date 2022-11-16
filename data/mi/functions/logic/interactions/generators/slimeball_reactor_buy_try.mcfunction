function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= slimeballReactorPaper price run title @s actionbar {"text":"You don't have enough paper to repair this reactor!","color":"red"}
execute unless score #temp ct.slimeball >= slimeballReactorSlimeball price run title @s actionbar {"text":"You don't have enough slimeballs to repair this reactor!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp ct.paper >= slimeballReactorPaper price if score #temp ct.slimeball >= slimeballReactorSlimeball price run function mi:maps/power_plant/logic/interactions/generators/slimeball_reactor/buy_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp ct.paper >= slimeballReactorPaper price if score #temp ct.slimeball >= slimeballReactorSlimeball price run function mi:maps/power_plant/logic/interactions/generators/slimeball_reactor/buy_team2
