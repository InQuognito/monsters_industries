execute if entity @s[team=team1] run scoreboard players operation $team1 stock += #wallStreet1 vars
execute if entity @s[team=team2] run scoreboard players operation $team2 stock += #wallStreet1 vars

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"score":{"name":"#wallStreet1","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"score":{"name":"#wallStreet1","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"score":{"name":"#wallStreet1","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #wallStreet1 price
function mi:logic/currency/apply_price
