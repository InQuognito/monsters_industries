function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = huskScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = huskScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= #mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation coalPrice temp = huskScaledCoalTeam1 price
execute if entity @s[team=team2] run scoreboard players operation coalPrice temp = huskScaledCoalTeam2 price
scoreboard players operation coalPrice temp *= #mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation spiderEyePrice temp = huskScaledSpiderEyeTeam1 price
execute if entity @s[team=team2] run scoreboard players operation spiderEyePrice temp = huskScaledSpiderEyeTeam2 price
scoreboard players operation spiderEyePrice temp *= #mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Husks","color":"gray"},{"text":"!","color":"red"}]
execute unless score #temp ct.coal >= coalPrice temp run title @s actionbar [{"text":"You don't have enough coal to purchase this many ","color":"red"},{"text":"Husks","color":"gray"},{"text":"!","color":"red"}]
execute unless score #temp ct.spiderEye >= spiderEyePrice temp run title @s actionbar [{"text":"You don't have enough spider eyes to purchase this many ","color":"red"},{"text":"Husks","color":"gray"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.coal >= coalPrice temp if score #temp ct.spiderEye >= spiderEyePrice temp run function mi:shop/mobs/zombies/husk_buy
