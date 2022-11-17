function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s shop matches 16 run scoreboard players set buyMult temp 4
execute if score @s shop matches 17 run scoreboard players set buyMult temp 16

scoreboard players operation paperPrice temp = #sniperPaper price
scoreboard players operation paperPrice temp *= buyMult temp
scoreboard players operation gunpowderPrice temp = #sniperGunpowder price
scoreboard players operation gunpowderPrice temp *= buyMult temp

execute unless score #temp ct.paper >= paperPrice temp run title @s actionbar {"text":"You don't have enough paper to purchase Snipers!","color":"red"}
execute unless score #temp ct.gunpowder >= gunpowderPrice temp run title @s actionbar {"text":"You don't have enough gunpowder to purchase Snipers!","color":"red"}
execute if score #temp ct.paper >= paperPrice temp if score #temp ct.gunpowder >= gunpowderPrice temp run function mi:shop/ammo/sniper_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
