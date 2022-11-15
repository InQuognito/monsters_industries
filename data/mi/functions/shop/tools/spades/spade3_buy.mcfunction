scoreboard players set @s spadeLevel 4

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Refined Spade","color":"aqua"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #spade3Paper price
scoreboard players operation #clearBone temp = #spade3Bone price
function mi:logic/currency/apply_price

clear @s #mi:shovels
