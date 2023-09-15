execute if entity @s[team=team1] run scoreboard players set #team1Swiftness temp 1
execute if entity @s[team=team2] run scoreboard players set #team2Swiftness temp 1

data modify block ^ ^1 ^ front_text.messages[1] set value '[{"text":"[ 1 / 3 ]"}]'
data modify block ^ ^1 ^ front_text.messages[2] set value '[{"score":{"name":"#swiftness2","objective":"price"}},{"text":" Paper"}]'

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Swiftness 1","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Swiftness 1","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Swiftness 1","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #swiftness1 price
function mi:logic/currency/apply_price
