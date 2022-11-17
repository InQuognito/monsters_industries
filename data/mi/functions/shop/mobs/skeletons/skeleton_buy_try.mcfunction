function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = skeletonScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = skeletonScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation bonePrice temp = skeletonScaledBoneTeam1 price
execute if entity @s[team=team2] run scoreboard players operation bonePrice temp = skeletonScaledBoneTeam2 price
scoreboard players operation bonePrice temp *= mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Skeletons","color":"white"},{"text":"!","color":"red"}]
execute unless score #temp ct.bone >= bonePrice temp run title @s actionbar [{"text":"You don't have enough bones to purchase this many ","color":"red"},{"text":"Skeletons","color":"white"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.bone >= bonePrice temp run function mi:shop/mobs/skeletons/skeleton_buy
