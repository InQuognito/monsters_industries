scoreboard players set @s spadeLevel 2

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Crude Spade","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #spade1Paper price
scoreboard players operation #clearBone temp = #spade1Bone price
function mi:logic/currency/apply_price

clear @s #mi:shovels
