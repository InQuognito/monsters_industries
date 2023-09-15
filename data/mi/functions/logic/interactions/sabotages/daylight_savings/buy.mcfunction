scoreboard players operation clearSabotageToken temp = #daylightSavings price
function mi:logic/currency/apply_price

time set 0t

title @s actionbar [{"text":"You have activated Daylight Savings!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Daylight Savings!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Daylight Savings!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Daylight Savings!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Daylight Savings!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/multi_use_bought
