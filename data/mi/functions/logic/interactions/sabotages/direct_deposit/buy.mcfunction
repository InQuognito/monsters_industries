scoreboard players operation clearSabotageToken temp = #directDeposit price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run function mi:logic/interactions/sabotages/direct_deposit/on_team1
execute if entity @s[team=team2] run function mi:logic/interactions/sabotages/direct_deposit/on_team2

title @s actionbar [{"text":"You have activated Direct Deposit!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Direct Deposit!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Direct Deposit!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Direct Deposit!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Direct Deposit!","color":"red"}]
tag @s remove self

function mi:logic/interactions/sabotages/multi_use_bought
