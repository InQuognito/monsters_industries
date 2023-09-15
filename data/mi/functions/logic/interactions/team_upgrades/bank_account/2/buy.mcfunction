execute if entity @s[team=team1] run scoreboard players set #team1BankAccount temp 2
execute if entity @s[team=team2] run scoreboard players set #team2BankAccount temp 2

data modify block ^ ^1 ^ front_text.messages[1] set value '[{"text":"[ 2 / 3 ]"}]'
data modify block ^ ^1 ^ front_text.messages[2] set value '[{"score":{"name":"#bankAccount3","objective":"price"}},{"text":" Paper"}]'

execute if entity @s[team=team1] run function mi:logic/interactions/team_upgrades/bank_account/2/team1
execute if entity @s[team=team2] run function mi:logic/interactions/team_upgrades/bank_account/2/team2

tag @s add self
title @s actionbar [{"text":"You have purchased ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" has purchased ","color":"green"},{"text":"Shared Bank Account","color":"gold"},{"text":"!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = #bankAccount2 price
function mi:logic/currency/apply_price
