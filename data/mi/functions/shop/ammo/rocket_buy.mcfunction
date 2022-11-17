loot give @s loot mi:items/ammo/rocket

title @s actionbar {"text":"You have purchased Rockets!","color":"green"}

scoreboard players operation clearPaper temp = paperPrice temp
scoreboard players operation clearGunpowder temp = gunpowderPrice temp
function mi:logic/currency/apply_price
