give @s minecraft:arrow 16

title @s actionbar {"text":"You have purchased 16 arrows!","color":"green"}

scoreboard players operation #clearPaper temp = #arrow16 price
function mi:logic/currency/apply_price
