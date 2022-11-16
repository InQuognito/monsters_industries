function mi:logic/get_bank_account_level
function mi:logic/convert_currency_scoreboards

execute if score #bankAccount temp matches 0 run loot give @s loot mi:resources/spider_eye
execute if score #bankAccount temp matches 1 if score @s ct.spiderEye < spiderEyeMax vars run scoreboard players operation @s ct.spiderEye += @s production.spiderEye
execute if score #bankAccount temp matches 2 if score #temp ct.spiderEye < spiderEyeMaxScaled vars run scoreboard players operation #add ct.spiderEye = @s production.spiderEye
execute if score #bankAccount temp matches 3 run scoreboard players operation #add ct.spiderEye = @s production.spiderEye

execute if score #bankAccount temp matches 2.. run function mi:logic/currency/add_values

function mi:logic/update_credit_card

execute if score #bankAccount temp matches 0 at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 1 if score @s ct.spiderEye < spiderEyeMax vars at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 2 if score #temp ct.spiderEye < spiderEyeMaxScaled vars at @s run playsound minecraft:entity.item.pickup block @s
execute if score #bankAccount temp matches 3 at @s run playsound minecraft:entity.item.pickup block @s

execute if predicate mi:chance_0_5 run tag @s[tag=!spiderEyeFortune] add getSpiderEyeFortune
tellraw @s[tag=getSpiderEyeFortune] {"text":"You feel the luck empower you and double your spider eye output!","color":"green"}
scoreboard players operation @s[tag=getSpiderEyeFortune] production.spiderEye *= 2 integers
tag @s[tag=getSpiderEyeFortune] add spiderEyeFortune
tag @s remove getSpiderEyeFortune
