function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = villagerScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = villagerScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= #mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough resources to purchase this many ","color":"red"},{"text":"Villagers","color":"gray"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp run function mi:shop/mobs/others/villager_buy
