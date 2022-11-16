scoreboard players set @s spadeLevel 5

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Exalted Spade","color":"gold"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #spade4Paper price
scoreboard players operation #clearToken temp = #spade4Token price
function mi:logic/currency/apply_price

clear @s #mi:shovels
