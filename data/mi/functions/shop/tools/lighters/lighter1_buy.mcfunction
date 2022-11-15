scoreboard players set @s lighterLevel 2

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Flint and Stone","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #lighter1Paper price
scoreboard players operation #clearGunpowder temp = #lighter1Gunpowder price
function mi:logic/currency/apply_price

clear @s minecraft:flint_and_steel
