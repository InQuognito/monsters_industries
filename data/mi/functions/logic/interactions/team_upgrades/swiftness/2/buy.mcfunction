execute if entity @s[team=team1] run scoreboard players set #team1Swiftness temp 2
execute if entity @s[team=team2] run scoreboard players set #team2Swiftness temp 2

data modify block ^ ^1 ^ front_text.messages[1] set value '[{"text":"[ 2 / 3 ]"}]'
data modify block ^ ^1 ^ front_text.messages[2] set value '[{"score":{"name":"#swiftness3","objective":"price"}},{"text":" Paper"}]'

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #swiftness2 price
function mi:logic/currency/apply_price
