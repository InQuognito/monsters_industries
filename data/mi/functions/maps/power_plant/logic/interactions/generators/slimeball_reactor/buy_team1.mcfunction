scoreboard players operation #team1 production.slimeball *= 2 integers

tag @s add self
title @s actionbar {"text":"You repair the old reactor.","color":"green"}
tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" repaired the secondary slimeball reactor!","color":"green"}]
tag @s remove self

fill 97 15 -119 97 16 -119 minecraft:air
setblock 97 15 -121 minecraft:glowstone replace

scoreboard players operation clearPaper temp = slimeballReactorPaper price
scoreboard players operation clearSlimeball temp = slimeballReactorSlimeball price
function mi:logic/currency/apply_price
