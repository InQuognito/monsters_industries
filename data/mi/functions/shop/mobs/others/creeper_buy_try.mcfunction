function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = creeperScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = creeperScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation gunpowderPrice temp = creeperScaledGunpowderTeam1 price
execute if entity @s[team=team2] run scoreboard players operation gunpowderPrice temp = creeperScaledGunpowderTeam2 price
scoreboard players operation gunpowderPrice temp *= mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Creepers","color":"dark_green"},{"text":"!","color":"red"}]
execute unless score #temp ct.gunpowder >= gunpowderPrice temp run title @s actionbar [{"text":"You don't have enough gunpowder to purchase this many ","color":"red"},{"text":"Creepers","color":"dark_green"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.gunpowder >= gunpowderPrice temp run function mi:shop/mobs/others/creeper_buy
