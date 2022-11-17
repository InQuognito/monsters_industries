clear @s #mi:swords
give @s minecraft:stone_sword{Unbreakable:1,HideFlags:126} 1
scoreboard players set @s swordLevel 1

title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Stone Sword","color":"gray"},{"text":"!","color":"green"}]

scoreboard players operation clearPaper temp = #sword1 price
function mi:logic/currency/apply_price
