function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if entity @s[team=team1] run scoreboard players operation tokenPrice temp = neuronWormScaledTokenTeam1 price
execute if entity @s[team=team2] run scoreboard players operation tokenPrice temp = neuronWormScaledTokenTeam2 price
scoreboard players operation tokenPrice temp *= #mobShopMult temp

execute unless score #tokenCount temp >= #tokenPrice temp run title @s actionbar [{"text":"You don't have enough tokens to purchase this many ","color":"red"},{"text":"Neuron Worms","color":"dark_green"},{"text":"!","color":"red"}]
execute if score #tokenCount temp >= #tokenPrice temp run function mi:shop/mobs/others/neuron_worm_buy
