loot give @s loot mi:items/weapons/shield

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Shield","color":"white"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #shieldPaper price
scoreboard players operation clearSlimeball temp = #shieldSlimeball price
function mi:logic/currency/apply_price
