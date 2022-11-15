function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s spadeLevel matches 5.. run title @s actionbar [{"text":"You already own an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]

execute unless score @s spadeLevel matches 5.. unless score #temp ct.paper >= #spade4Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 5.. unless score #temp ct.bone >= #spade4Bone price run title @s actionbar [{"text":"You do not have enough bones to purchase an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 5.. if score #temp ct.paper >= #spade4Paper price if score #temp ct.bone >= #spade4Bone price run function mi:shop/tools/spades/spade4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
