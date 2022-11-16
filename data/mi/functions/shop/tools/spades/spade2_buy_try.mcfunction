function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s spadeLevel matches 3.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Functional Spade","color":"white"},{"text":"!","color":"red"}]

execute unless score @s spadeLevel matches 3.. unless score #temp ct.paper >= #spade2Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase the ","color":"red"},{"text":"Functional Spade","color":"white"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 3.. unless score #temp ct.bone >= #spade2Bone price run title @s actionbar [{"text":"You do not have enough bones to purchase the ","color":"red"},{"text":"Functional Spade","color":"white"},{"text":"!","color":"red"}]
execute unless score @s spadeLevel matches 3.. if score #temp ct.paper >= #spade2Paper price if score #temp ct.bone >= #spade2Bone price run function mi:shop/tools/spades/spade2_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
