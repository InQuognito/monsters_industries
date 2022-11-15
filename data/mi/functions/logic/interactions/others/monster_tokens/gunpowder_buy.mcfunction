loot give @s loot mi:monster_token

scoreboard players operation #clearPaper temp = #monsterTokenPaper price
scoreboard players operation #clearGunpowder temp = #monsterTokenGunpowder price
function mi:logic/currency/apply_price
