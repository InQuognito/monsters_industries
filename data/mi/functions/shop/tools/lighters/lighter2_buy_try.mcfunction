function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score @s lighterLevel matches 3.. run title @s actionbar [{"text":"You already own a ","color":"red"},{"text":"Flint and Steel","color":"white"},{"text":"!","color":"red"}]

execute unless score @s lighterLevel matches 3.. unless score #temp ct.paper >= #lighter1Paper price run title @s actionbar [{"text":"You do not have enough paper to purchase a ","color":"red"},{"text":"Flint and Steel","color":"white"},{"text":"!","color":"red"}]
execute unless score @s lighterLevel matches 3.. unless score #temp ct.gunpowder >= #lighter1Gunpowder price run title @s actionbar [{"text":"You do not have enough gunpowder to purchase a ","color":"red"},{"text":"Flint and Steel","color":"white"},{"text":"!","color":"red"}]
execute unless score @s lighterLevel matches 3.. if score #temp ct.paper >= #lighter1Paper price if score #temp ct.gunpowder >= #lighter1Gunpowder price run function mi:shop/tools/lighters/lighter2_buy

scoreboard players set @s shop 0
scoreboard players enable @a shop
