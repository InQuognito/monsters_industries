scoreboard players set @s pickaxeLevel 2

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Crude Pickaxe","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #pickaxe1Paper price
scoreboard players operation #clearCoal temp = #pickaxe1Coal price
function mi:logic/currency/apply_price

clear @s #mi:pickaxes
