scoreboard players operation clearSabotageToken temp = #cloakingField price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run scoreboard players set #team1CloakingField temp 1
execute if entity @s[team=team2] run scoreboard players set #team2CloakingField temp 1

title @s actionbar [{"text":"You have activated Cloaking Field!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Cloaking Field!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Cloaking Field!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Cloaking Field!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Cloaking Field!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/multi_use_bought
