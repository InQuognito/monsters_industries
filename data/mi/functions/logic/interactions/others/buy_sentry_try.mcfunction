function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #monsterTokenCount temp >= #sentry price run title @s actionbar {"text":"You don't have enough tokens to purchase a sentry!","color":"red"}

execute unless score #temp sentryCount matches ..9 run title @s actionbar {"text":"You have reached the maximum number of sentries!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp sentryCount matches ..9 if score #monsterTokenCount temp >= #sentry price run function mi:maps/power_plant/logic/interactions/others/buy_sentry_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp sentryCount matches ..9 if score #monsterTokenCount temp >= #sentry price run function mi:maps/power_plant/logic/interactions/others/buy_sentry_team2
