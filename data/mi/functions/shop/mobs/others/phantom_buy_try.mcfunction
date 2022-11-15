function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

scoreboard players operation #paperPrice temp = phantomScaledPaper price
scoreboard players operation #paperPrice temp *= #mobShopMult temp
scoreboard players operation slimeballPrice temp = phantomScaledSlimeball price
scoreboard players operation slimeballPrice temp *= #mobShopMult temp
scoreboard players operation #gunpowderPrice temp = phantomScaledGunpowder price
scoreboard players operation #gunpowderPrice temp *= #mobShopMult temp

execute unless score #temp ct.paper >= #paperPrice temp run title @s actionbar [{"text":"You don't have enough paper to purchase this many ","color":"red"},{"text":"Phantoms","color":"blue"},{"text":"!","color":"red"}]
execute unless score #temp ct.slimeball >= slimeballPrice temp run title @s actionbar [{"text":"You don't have enough slimeballs to purchase this many ","color":"red"},{"text":"Phantoms","color":"blue"},{"text":"!","color":"red"}]
execute unless score #temp ct.gunpowder >= #gunpowderPrice temp run title @s actionbar [{"text":"You don't have enough gunpowder to purchase this many ","color":"red"},{"text":"Phantoms","color":"blue"},{"text":"!","color":"red"}]
execute if score #temp ct.paper >= #paperPrice temp if score #temp ct.slimeball >= slimeballPrice temp if score #temp ct.gunpowder >= #gunpowderPrice temp run function mi:shop/mobs/others/phantom_buy
