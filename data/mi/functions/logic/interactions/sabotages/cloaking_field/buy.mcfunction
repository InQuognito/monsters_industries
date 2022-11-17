scoreboard players operation clearSabotageToken temp = #cloakingField price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run scoreboard players set #team1CloakingField temp 1
execute if entity @s[team=team2] run scoreboard players set #team2CloakingField temp 1

execute if entity @s[team=team1] run tellraw @a[team=team1] {"text":"Cloaking Field has been activated!","color":"green"}
execute if entity @s[team=team1] run tellraw @a[team=team2] {"text":"The opponent has activated Cloaking Field!","color":"red"}
execute if entity @s[team=team2] run tellraw @a[team=team2] {"text":"Cloaking Field has been activated!","color":"green"}
execute if entity @s[team=team2] run tellraw @a[team=team1] {"text":"The opponent has activated Cloaking Field!","color":"red"}

function mi:logic/interactions/sabotages/multi_use_bought
