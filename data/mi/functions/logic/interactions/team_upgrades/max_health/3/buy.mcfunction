execute if entity @s[team=team1] run scoreboard players set #team1MaxHealth temp 3
execute if entity @s[team=team2] run scoreboard players set #team2MaxHealth temp 3

execute if entity @s[team=team1] as @a[team=team1] run function mi:logic/heal
execute if entity @s[team=team2] as @a[team=team2] run function mi:logic/heal

data modify block ^ ^1 ^ front_text.messages[1] set value '[{"text":"[ 3 / 5 ]"}]'
data modify block ^ ^1 ^ front_text.messages[2] set value '[{"score":{"name":"#maxHealth4Paper","objective":"price"}},{"text":" Paper"}]'
data modify block ^ ^1 ^ front_text.messages[3] set value '[{"score":{"name":"#maxHealth4Slimeball","objective":"price"}},{"text":" Slimeballs"}]'

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Max Health 3","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Max Health 3","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Max Health 3","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #maxHealth3 price
function mi:logic/currency/apply_price
