loot give @s loot mi:resources/monster_token

scoreboard players operation clearPaper temp = #monsterTokenPaper price
scoreboard players operation clearSlimeball temp = #monsterTokenSlimeball price
function mi:logic/currency/apply_price
