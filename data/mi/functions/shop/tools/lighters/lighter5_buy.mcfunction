scoreboard players set @s lighterLevel 6
scoreboard players operation @s production.gunpowder *= 2 integers

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Flamethrower","color":"dark_gray"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #lighter5Paper price
scoreboard players operation clearNetherite temp = #lighter5Netherite price
function mi:logic/currency/apply_price

clear @s minecraft:flint_and_steel
