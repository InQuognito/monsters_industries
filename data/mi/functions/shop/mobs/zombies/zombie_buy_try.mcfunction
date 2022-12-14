function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = zombieScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = zombieScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation coalPrice temp = zombieScaledCoalTeam1 price
execute if entity @s[team=team2] run scoreboard players operation coalPrice temp = zombieScaledCoalTeam2 price
scoreboard players operation coalPrice temp *= mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Zombies","color":"dark_green"},{"text":"!","color":"red"}]
execute unless score #temp ct.coal >= coalPrice temp run title @s actionbar [{"text":"You don't have enough coal to purchase this many ","color":"red"},{"text":"Zombies","color":"dark_green"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.coal >= coalPrice temp run function mi:shop/mobs/zombies/zombie_buy
