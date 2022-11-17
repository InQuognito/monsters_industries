execute if entity @s[team=team1] run scoreboard players set #team1BankAccount temp 2
execute if entity @s[team=team2] run scoreboard players set #team2BankAccount temp 2

data merge block ^ ^1 ^ {Color:"black",Text2:'{"text":"[ 2 / 3 ]"}',Text3:'[{"score":{"name":"#bankAccount3","objective":"price"}},{"text":" Paper"}]'}

execute if entity @s[team=team1] run function mi:logic/interactions/team_upgrades/bank_account/2/team1
execute if entity @s[team=team2] run function mi:logic/interactions/team_upgrades/bank_account/2/team2

tag @s add self
title @s actionbar [{"text":"You have purchased a ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"text":"Your teammate has purchased a ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"text":"Your teammate has purchased a ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #bankAccount2 price
function mi:logic/currency/apply_price
