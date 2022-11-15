function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation paperPrice temp = slimeScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation paperPrice temp = slimeScaledPaperTeam2 price
scoreboard players operation paperPrice temp *= #mobShopMult temp
execute if entity @s[team=team1] run scoreboard players operation slimeballPrice temp = slimeScaledSlimeballTeam1 price
execute if entity @s[team=team2] run scoreboard players operation slimeballPrice temp = slimeScaledSlimeballTeam2 price
scoreboard players operation slimeballPrice temp *= #mobShopMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Slimes","color":"green"},{"text":"!","color":"red"}]
execute unless score #temp ct.slimeball >= slimeballPrice temp run title @s actionbar [{"text":"You don't have enough slimeballs to purchase this many ","color":"red"},{"text":"Slimes","color":"green"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.slimeball >= slimeballPrice temp run function mi:shop/mobs/others/slime_buy
