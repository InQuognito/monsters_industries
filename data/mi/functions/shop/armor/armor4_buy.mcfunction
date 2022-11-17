clear @s #mi:pants_and_boots

scoreboard players set @s armorLevel 4

function mi:logic/restore_armor

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Diamond Armor","color":"aqua"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #armor4Paper price
scoreboard players operation clearCoal temp = #armor4Coal price
scoreboard players operation clearGunpowder temp = #armor4Gunpowder price
function mi:logic/currency/apply_price
