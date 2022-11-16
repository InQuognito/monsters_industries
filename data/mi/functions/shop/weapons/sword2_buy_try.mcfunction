function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices
function mi:logic/get_sword_level

execute if score @s swordLevel matches 2.. run title @s actionbar [{"text":"You already own an ","color":"red"},{"text":"Iron Sword","color":"white"},{"text":"!","color":"red"}]

execute if score @s swordLevel matches ..1 unless score #temp ct.paper >= #sword2 price run title @s actionbar [{"text":"You don't have enough paper to purchase an ","color":"red"},{"text":"Iron Sword","color":"white"},{"text":"!","color":"red"}]
execute if score @s swordLevel matches ..1 if score #temp ct.paper >= #sword2 price run function mi:shop/weapons/sword2_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
