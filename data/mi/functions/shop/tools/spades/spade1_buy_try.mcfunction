function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s spadeLevel matches 2.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Crude Spade","color":"gray"},{"text":"!","color":"red"}]

execute unless score @s spadeLevel matches 2.. unless score #temp ct.paper >= #spade1Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase the ","color":"red"},{"text":"Crude Spade","color":"gray"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 2.. unless score #temp ct.bone >= #spade1Bone price run title @s actionbar [{"text":"You don't have enough bones to purchase the ","color":"red"},{"text":"Crude Spade","color":"gray"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 2.. if score #temp ct.paper >= #spade1Paper price if score #temp ct.bone >= #spade1Bone price run function mi:shop/tools/spades/spade1_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
