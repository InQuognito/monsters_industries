function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= spiderEyeTrack2Paper price run title @s actionbar {"text":"You don't have enough paper to shorten the track!","color":"red"}
execute unless score #temp ct.spiderEye >= spiderEyeTrack2SpiderEye price run title @s actionbar {"text":"You don't have enough spider eyes to shorten the track!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp ct.paper >= spiderEyeTrack2Paper price if score #temp ct.spiderEye >= spiderEyeTrack2SpiderEye price run function mi:maps/power_plant/logic/interactions/generators/spidereye_generator/2/buy_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp ct.paper >= spiderEyeTrack2Paper price if score #temp ct.spiderEye >= spiderEyeTrack2SpiderEye price run function mi:maps/power_plant/logic/interactions/generators/spidereye_generator/2/buy_team2
