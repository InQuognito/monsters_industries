scoreboard players set @s pickaxeLevel 6

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Dwarven Pickaxe","color":"dark_gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #pickaxe5Paper price
scoreboard players operation #clearNetherite temp = #pickaxe5Netherite price
function mi:logic/currency/apply_price

clear @s #mi:pickaxes
