function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute store result score #shieldCount temp run clear @s minecraft:shield 0

execute if score #shieldCount temp matches 1 run title @s actionbar [{"text":"You already own a ","color":"red"},{"text":"Shield","color":"white"},{"text":"!","color":"red"}]

execute unless score #temp ct.paper >= #shieldPaper price run title @s actionbar [{"text":"You don't have enough paper to purchase a ","color":"red"},{"text":"Shield","color":"white"},{"text":"!","color":"red"}]
execute unless score #temp ct.slimeball >= #shieldSlimeball price run title @s actionbar [{"text":"You don't have enough slimeballs to purchase a ","color":"red"},{"text":"Shield","color":"white"},{"text":"!","color":"red"}]
execute if score #shieldCount temp matches 0 if score #temp ct.paper >= #shieldPaper price if score #temp ct.slimeball >= #shieldSlimeball price run function mi:shop/weapons/shield_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
