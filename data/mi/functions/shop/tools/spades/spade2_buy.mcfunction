scoreboard players set @s spadeLevel 3

title @s actionbar [{"text":"You have purchased the ","color":"green"},{"text":"Functional Spade","color":"white"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #spade2Paper price
scoreboard players operation clearBone temp = #spade2Bone price
function mi:logic/currency/apply_price

clear @s #mi:shovels
