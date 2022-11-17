loot give @s loot mi:items/ammo/bayonet

title @s actionbar {"text":"You have purchased Bayonets!","color":"green"}

scoreboard players operation clearPaper temp = paperPrice temp
scoreboard players operation clearGunpowder temp = gunpowderPrice temp
function mi:logic/currency/apply_price
