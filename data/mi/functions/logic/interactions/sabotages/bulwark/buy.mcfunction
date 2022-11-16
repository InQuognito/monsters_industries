scoreboard players operation #clearSabotageToken temp = #bulwark price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run scoreboard players set #team1Bulwark temp 1
execute if entity @s[team=team2] run scoreboard players set #team2Bulwark temp 1

execute if entity @s[team=team1] run tellraw @a[team=team1] {"text":"Bulwark has been activated!","color":"green"}
execute if entity @s[team=team1] run tellraw @a[team=team2] {"text":"The opponent has activated Bulwark!","color":"red"}
execute if entity @s[team=team2] run tellraw @a[team=team2] {"text":"Bulwark has been activated!","color":"green"}
execute if entity @s[team=team2] run tellraw @a[team=team1] {"text":"The opponent has activated Bulwark!","color":"red"}

function mi:logic/interactions/sabotages/multi_use_bought
