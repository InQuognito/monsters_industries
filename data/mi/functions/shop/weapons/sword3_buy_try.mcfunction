function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices
function mi:logic/get_sword_level

execute if score @s swordLevel matches 3.. run title @s actionbar [{"text":"You already own a ","color":"red"},{"text":"Diamond Sword","color":"aqua"},{"text":"!","color":"red"}]

execute if score @s swordLevel matches ..2 unless score #temp ct.paper >= #sword3Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase a ","color":"red"},{"text":"Diamond Sword","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s swordLevel matches ..2 unless score #temp ct.coal >= #sword3Coal price run title @s actionbar [{"text":"You don't have enough coal to purchase a ","color":"red"},{"text":"Diamond Sword","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s swordLevel matches ..2 if score #temp ct.paper >= #sword3Paper price if score #temp ct.coal >= #sword3Coal price run function mi:shop/weapons/sword3_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
