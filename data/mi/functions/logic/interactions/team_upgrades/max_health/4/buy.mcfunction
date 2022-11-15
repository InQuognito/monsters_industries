execute if entity @s[team=team1] run scoreboard players set #team1MaxHealth temp 4
execute if entity @s[team=team2] run scoreboard players set #team2MaxHealth temp 4

execute if entity @s[team=team1] as @a[team=team1] run function mi:logic/heal
execute if entity @s[team=team2] as @a[team=team2] run function mi:logic/heal

data merge block ^ ^1 ^ {Color:"black",Text2:'{"text":"[ 4 / 5 ]"}',Text3:'[{"score":{"name":"#maxHealth5Paper","objective":"price"}},{"text":" Paper"}]',Text4:'[{"score":{"name":"#maxHealth5Slimeball","objective":"price"}},{"text":" Slimeballs"}]'}

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Max Health 4","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Max Health 4","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Max Health 4","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation #clearPaper temp = #maxHealth4Paper price
scoreboard players operation #clearSlimeball temp = #maxHealth4Slimeball price
function mi:logic/currency/apply_price
