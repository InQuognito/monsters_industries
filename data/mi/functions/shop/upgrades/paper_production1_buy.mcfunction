scoreboard players set @s production.paper 2

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Paper Production 1","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #paperProduction1 price
function mi:logic/currency/apply_price
