scoreboard players operation #clearSabotageToken temp = #daylightSavings price
function mi:logic/currency/apply_price

time set 0t

execute if entity @s[team=team1] run tellraw @a[team=team1] {"text":"Daylight Savings has been activated!","color":"green"}
execute if entity @s[team=team1] run tellraw @a[team=team2] {"text":"The opponent has activated Daylight Savings!","color":"red"}
execute if entity @s[team=team2] run tellraw @a[team=team2] {"text":"Daylight Savings has been activated!","color":"green"}
execute if entity @s[team=team2] run tellraw @a[team=team1] {"text":"The opponent has activated Daylight Savings!","color":"red"}

function mi:logic/interactions/sabotages/multi_use_bought
