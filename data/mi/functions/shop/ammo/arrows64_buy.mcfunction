give @s minecraft:arrow 64

title @s actionbar {"text":"You have purchased 64 arrows!","color":"green"}

scoreboard players operation #clearPaper temp = #arrow64 price
function mi:logic/currency/apply_price
