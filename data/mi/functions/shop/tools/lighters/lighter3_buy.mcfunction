scoreboard players set @s lighterLevel 4

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Flint and Diamond","color":"aqua"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #lighter3Paper price
scoreboard players operation #clearGunpowder temp = #lighter3Gunpowder price
function mi:logic/currency/apply_price

clear @s minecraft:flint_and_steel
