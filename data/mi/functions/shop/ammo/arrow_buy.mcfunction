loot give @s loot mi:items/ammo/arrow

title @s actionbar {"text":"You have purchased 16 arrows!","color":"green"}

scoreboard players operation clearPaper temp = paperPrice temp
function mi:logic/currency/apply_price
