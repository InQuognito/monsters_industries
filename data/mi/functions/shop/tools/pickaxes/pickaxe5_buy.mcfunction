scoreboard players set @s pickaxeLevel 6
scoreboard players operation @s production.coal *= 2 integers

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Dwarven Pickaxe","color":"dark_gray"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #pickaxe5Paper price
scoreboard players operation clearNetherite temp = #pickaxe5Netherite price
function mi:logic/currency/apply_price

clear @s #mi:pickaxes
