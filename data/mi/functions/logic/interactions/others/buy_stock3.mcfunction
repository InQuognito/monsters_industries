execute if entity @s[team=team1] run scoreboard players operation $team1 stock += #wallStreet3 vars
execute if entity @s[team=team2] run scoreboard players operation $team2 stock += #wallStreet3 vars

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"score":{"name":"#wallStreet3","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"score":{"name":"#wallStreet3","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased ","color":"green"},{"score":{"name":"#wallStreet3","objective":"vars"},"color":"gold"},{"text":" stock!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #wallStreet3 price
function mi:logic/currency/apply_price
