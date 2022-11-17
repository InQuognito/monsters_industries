execute if entity @s[team=team1] run scoreboard players set #team1Swiftness temp 2
execute if entity @s[team=team2] run scoreboard players set #team2Swiftness temp 2

data merge block ^ ^1 ^ {Text2:'{"text":"[ 2 / 3 ]"}',Text3:'[{"score":{"name":"#swiftness3","objective":"price"}},{"text":" Paper"}]'}

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"text":"Swiftness 2","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #swiftness2 price
function mi:logic/currency/apply_price
