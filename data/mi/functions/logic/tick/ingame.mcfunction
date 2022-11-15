execute if score $powerPlant map matches 1 run function mi:maps/power_plant/logic/tick

function mi:logic/tick/attributes
function mi:logic/tick/dragons_breath/check
function mi:logic/tick/items
execute as @e[type=minecraft:zombie,tag=necromancer] run function mi:logic/tick/necromancer/tick
execute as @e[type=minecraft:skeleton,tag=necroMinion] run function mi:logic/tick/necromancer/minion_tick
function mi:logic/tick/resources
function mi:logic/tick/respawn
function mi:logic/tick/sabotages
function mi:logic/tick/shop
execute as @e[type=minecraft:slime,tag=!hasLootTable] run function mi:logic/tick/slimes
function mi:logic/tick/stock
function mi:logic/tick/vex

execute as @a[team=team1] if score #team1BankAccount temp matches 1.. run function mi:logic/resources/transfer_to_bank_account/check
execute as @a[team=team2] if score #team2BankAccount temp matches 1.. run function mi:logic/resources/transfer_to_bank_account/check

execute as @e[type=#mi:mobs] run function mi:logic/health/health_check

scoreboard players operation $team1StockPercent temp = $team1 stock
scoreboard players operation $team1StockPercent temp *= 100 integers
scoreboard players operation $team1StockPercent temp /= $stockLimit stock

scoreboard players operation $team2StockPercent temp = $team2 stock
scoreboard players operation $team2StockPercent temp *= 100 integers
scoreboard players operation $team2StockPercent temp /= $stockLimit stock
