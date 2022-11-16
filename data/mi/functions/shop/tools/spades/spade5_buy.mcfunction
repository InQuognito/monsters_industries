scoreboard players set @s spadeLevel 6

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Gravedigger's Shovel","color":"dark_gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #spade5Paper price
scoreboard players operation #clearNetherite temp = #spade5Netherite price
function mi:logic/currency/apply_price

clear @s #mi:spades
