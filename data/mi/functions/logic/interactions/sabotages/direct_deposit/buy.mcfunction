scoreboard players operation clearSabotageToken temp = #directDeposit price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run function mi:logic/interactions/sabotages/direct_deposit/on_team1
execute if entity @s[team=team2] run function mi:logic/interactions/sabotages/direct_deposit/on_team2

execute if entity @s[team=team1] run tellraw @a[team=team1] {"text":"Direct Deposit has been activated!","color":"green"}
execute if entity @s[team=team1] run tellraw @a[team=team2] {"text":"The opponent has activated Direct Deposit!","color":"red"}
execute if entity @s[team=team2] run tellraw @a[team=team2] {"text":"Direct Deposit has been activated!","color":"green"}
execute if entity @s[team=team2] run tellraw @a[team=team1] {"text":"The opponent has activated Direct Deposit!","color":"red"}

function mi:logic/interactions/sabotages/multi_use_bought
