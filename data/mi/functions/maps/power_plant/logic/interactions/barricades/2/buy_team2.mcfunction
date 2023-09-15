fill 186 14 -143 187 16 -142 minecraft:air

tag @s add self
title @s actionbar {"text":"You clear the old barricade...","color":"green"}
tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" cleared the basement tunnel barricade!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #barricade2 price
function mi:logic/currency/apply_price

execute at @s run playsound minecraft:entity.generic.explode block @a[team=team2]
