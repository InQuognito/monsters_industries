scoreboard players set @s pickaxeLevel 5

title @s actionbar [{"text":"You have purchased an ","color":"green"},{"text":"Exalted Pickaxe","color":"gold"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #pickaxe4Paper price
scoreboard players operation #clearToken temp = #pickaxe4Token price
function mi:logic/currency/apply_price

clear @s #mi:pickaxes
