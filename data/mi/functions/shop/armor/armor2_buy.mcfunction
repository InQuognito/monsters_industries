clear @s #mi:pants_and_boots

scoreboard players set @s armorLevel 2

function mi:logic/restore_armor

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Chainmail Armor","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #armor2Paper price
scoreboard players operation #clearGunpowder temp = #armor2Gunpowder price
function mi:logic/currency/apply_price
