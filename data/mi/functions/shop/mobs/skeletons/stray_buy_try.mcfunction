function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = strayScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = strayScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation bonePrice temp = strayScaledBoneTeam1 price
execute if entity @s[team=team2] run scoreboard players operation bonePrice temp = strayScaledBoneTeam2 price
scoreboard players operation bonePrice temp *= mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation spiderEyePrice temp = strayScaledSpiderEyeTeam1 price
execute if entity @s[team=team2] run scoreboard players operation spiderEyePrice temp = strayScaledSpiderEyeTeam2 price
scoreboard players operation spiderEyePrice temp *= mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Strays","color":"dark_gray"},{"text":"!","color":"red"}]
execute unless score #temp ct.bone >= bonePrice temp run title @s actionbar [{"text":"You don't have enough bones to purchase this many ","color":"red"},{"text":"Strays","color":"dark_gray"},{"text":"!","color":"red"}]
execute unless score #temp ct.spiderEye >= spiderEyePrice temp run title @s actionbar [{"text":"You don't have enough spider eyes to purchase this many ","color":"red"},{"text":"Strays","color":"dark_gray"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.bone >= bonePrice temp if score #temp ct.spiderEye >= spiderEyePrice temp run function mi:shop/mobs/skeletons/stray_buy
