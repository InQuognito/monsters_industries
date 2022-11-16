function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s spadeLevel matches 5.. run title @s actionbar [{"text":"You already own an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]

execute if score @s spadeLevel matches ..3 run title @s actionbar [{"text":"You do not own the ","color":"red"},{"text":"Refined Spade","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 4 unless score #temp ct.paper >= #spade4Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 4 unless score #monsterTokenCount temp >= #spade4Token price run title @s actionbar [{"text":"You don't have enough tokens to purchase an ","color":"red"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"red"}]
execute if score @s spadeLevel matches 4 if score #temp ct.paper >= #spade4Paper price if score #monsterTokenCount temp >= #spade4Token price run function mi:shop/tools/spades/spade4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
