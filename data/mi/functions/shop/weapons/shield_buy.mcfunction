give @s minecraft:shield 1

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Shield","color":"white"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #shield price
function mi:logic/currency/apply_price
