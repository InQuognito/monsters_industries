scoreboard players set @s production.paper 4

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Paper Production 3","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #paperProduction3 price
function mi:logic/currency/apply_price
