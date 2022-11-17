loot give @s loot mi:items/ammo/sniper

title @s actionbar {"text":"You have purchased Snipers!","color":"green"}

scoreboard players operation clearPaper temp = paperPrice temp
scoreboard players operation clearGunpowder temp = gunpowderPrice temp
function mi:logic/currency/apply_price
