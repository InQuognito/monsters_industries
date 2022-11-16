clear @s #mi:pants_and_boots

scoreboard players set @s armorLevel 3

function mi:logic/restore_armor

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Iron Armor","color":"white"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #armor3Paper price
scoreboard players operation #clearGunpowder temp = #armor3Gunpowder price
function mi:logic/currency/apply_price
