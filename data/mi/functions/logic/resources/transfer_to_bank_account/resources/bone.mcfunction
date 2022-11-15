function mi:logic/get_bank_account_level

execute if score #bankAccount temp matches 1 run scoreboard players add @s ct.bone 1
execute if score #bankAccount temp matches 2.. if entity @s[team=team1] run scoreboard players add #team1 ct.bone 1
execute if score #bankAccount temp matches 2.. if entity @s[team=team2] run scoreboard players add #team2 ct.bone 1

clear @s minecraft:bone{new:1} 1
execute store result score @s temp run clear @s minecraft:bone{new:1} 0
execute if score @s temp matches 1.. run function mi:logic/resources/transfer_to_bank_account/resources/bone
