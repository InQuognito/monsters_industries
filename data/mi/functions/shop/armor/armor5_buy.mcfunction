clear @s #mi:pants_and_boots

scoreboard players set @s armorLevel 5

function mi:logic/restore_armor

title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Netherite Armor","color":"dark_gray"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #armor5Paper price
scoreboard players operation clearNetherite temp = #armor5Netherite price
function mi:logic/currency/apply_price
