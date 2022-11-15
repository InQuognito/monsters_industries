scoreboard players set @s production.paper 3

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Paper Production 2","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #paperProduction2 price
function mi:logic/currency/apply_price
