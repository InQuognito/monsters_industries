scoreboard players operation #team2 production.slimeball *= 2 integers

tag @s add self
title @s actionbar {"text":"You repair the old reactor.","color":"green"}
tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" repaired the secondary slimeball reactor!","color":"green"}]
tag @s remove self

fill 183 15 -132 183 16 -132 minecraft:air
setblock 183 15 -130 minecraft:glowstone replace

scoreboard players operation clearPaper temp = slimeballReactorPaper price
scoreboard players operation clearSlimeball temp = slimeballReactorSlimeball price
function mi:logic/currency/apply_price
