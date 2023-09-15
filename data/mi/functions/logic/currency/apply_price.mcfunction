function mi:logic/get_bank_account_level

execute if score #bankAccount temp matches 0 run function mi:logic/currency/clear_items

execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.paper -= clearPaper temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.coal -= clearCoal temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.bone -= clearBone temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.spiderEye -= clearSpiderEye temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.gunpowder -= clearGunpowder temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.slimeball -= clearSlimeball temp
execute if score #bankAccount temp matches 1 run scoreboard players operation @s ct.netherite -= clearNetherite temp

execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.paper -= clearPaper temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.coal -= clearCoal temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.bone -= clearBone temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.spiderEye -= clearSpiderEye temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.gunpowder -= clearGunpowder temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.slimeball -= clearSlimeball temp
execute if score #team1BankAccount temp matches 2..3 if entity @s[team=team1] run scoreboard players operation #team1 ct.netherite -= clearNetherite temp

execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.paper -= clearPaper temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.coal -= clearCoal temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.bone -= clearBone temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.spiderEye -= clearSpiderEye temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.gunpowder -= clearGunpowder temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.slimeball -= clearSlimeball temp
execute if score #team2BankAccount temp matches 2..3 if entity @s[team=team2] run scoreboard players operation #team2 ct.netherite -= clearNetherite temp

execute if score clearMonsterToken temp matches 1.. run function mi:logic/currency/clear_monster_tokens
execute if score clearSabotageToken temp matches 1.. run function mi:logic/currency/clear_sabotage_tokens

function mi:logic/currency/reset_temp_prices
function mi:logic/update_credit_card
