give @s minecraft:crossbow{Unbreakable:1,HideFlags:126} 1

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Crossbow","color":"white"},{"text":"!","color":"green"}]

scoreboard players operation #clearPaper temp = #crossbow price
function mi:logic/currency/apply_price
