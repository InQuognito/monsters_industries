scoreboard players set @s lighterLevel 5

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Flint and Pyrite","color":"gold"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #lighter4Paper price
scoreboard players operation clearMonsterToken temp = #lighter4Token price
function mi:logic/currency/apply_price

clear @s minecraft:flint_and_steel
