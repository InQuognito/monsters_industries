function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s lighterLevel matches 2.. run title @s actionbar [{"text":"You already own the ","color":"red"},{"text":"Flint and Stone","color":"gray"},{"text":"!","color":"red"}]

execute unless score @s lighterLevel matches 2.. unless score #temp ct.paper >= #lighter1Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase the ","color":"red"},{"text":"Flint and Stone","color":"gray"},{"text":"!","color":"red"}]
execute unless score @s lighterLevel matches 2.. unless score #temp ct.gunpowder >= #lighter1Gunpowder price run title @s actionbar [{"text":"You do not have enough gunpowder to purchase the ","color":"red"},{"text":"Flint and Stone","color":"gray"},{"text":"!","color":"red"}]
execute unless score @s lighterLevel matches 2.. if score #temp ct.paper >= #lighter1Paper price if score #temp ct.gunpowder >= #lighter1Gunpowder price run function mi:shop/tools/lighters/lighter1_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
