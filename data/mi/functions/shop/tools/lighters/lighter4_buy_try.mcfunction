function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s lighterLevel matches 5.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Flint and Pyrite","color":"gold"},{"text":"!","color":"red"}]

execute if score @s lighterLevel matches ..3 run title @s actionbar [{"text":"You do not own the ","color":"red"},{"text":"Flint and Diamond","color":"aqua"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 4 unless score #temp ct.paper >= #lighter4Paper price run title @s actionbar [{"text":"You don't have enough paper to purchase the ","color":"red"},{"text":"Flint and Pyrite","color":"gold"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 4 unless score #monsterTokenCount temp >= #lighter4Token price run title @s actionbar [{"text":"You don't have enough tokens to purchase the ","color":"red"},{"text":"Flint and Pyrite","color":"gold"},{"text":"!","color":"red"}]
execute if score @s lighterLevel matches 4 if score #temp ct.paper >= #lighter4Paper price if score #monsterTokenCount temp >= #lighter4Token price run function mi:shop/tools/lighters/lighter4_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
