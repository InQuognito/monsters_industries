scoreboard players operation clearSabotageToken temp = #plague price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run scoreboard players set #team2Plague temp 1
execute if entity @s[team=team2] run scoreboard players set #team1Plague temp 1

execute if score #team2Plague temp matches 1 as @a[team=team2] run function mi:logic/interactions/sabotages/plague/apply
execute if score #team1Plague temp matches 1 as @a[team=team1] run function mi:logic/interactions/sabotages/plague/apply

execute if score #team2Plague temp matches 1 run tellraw @a[team=team1] {"text":"Plague has been activated!","color":"green"}
execute if score #team2Plague temp matches 1 run tellraw @a[team=team2] {"text":"The opponent has activated Plague!","color":"red"}
execute if score #team1Plague temp matches 1 run tellraw @a[team=team2] {"text":"Plague has been activated!","color":"green"}
execute if score #team1Plague temp matches 1 run tellraw @a[team=team1] {"text":"The opponent has activated Plague!","color":"red"}

execute if score #team2Plague temp matches 1 run schedule function mi:logic/interactions/sabotages/plague/remove_team2 300s
execute if score #team1Plague temp matches 1 run schedule function mi:logic/interactions/sabotages/plague/remove_team1 300s

function mi:logic/interactions/sabotages/single_use_bought
