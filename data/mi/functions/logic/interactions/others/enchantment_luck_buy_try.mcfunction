function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp enchantment matches ..2 run title @s actionbar {"text":"You have reached the maximum enchantment luck!","color":"red"}
execute if score #temp enchantment matches ..2 unless score #temp ct.paper >= #enchantmentLuckPaper price run title @s actionbar {"text":"You do not have enough paper to upgrade enchantment luck!","color":"red"}
execute if score #temp enchantment matches ..2 unless score #temp ct.netherite >= #enchantmentLuckNetherite price run title @s actionbar {"text":"You do not have enough netherite to upgrade enchantment luck!","color":"red"}

execute if score $powerPlant map matches 1 if entity @s[team=team1] if score #temp ct.paper >= #enchantmentLuckPaper price if score #temp ct.netherite >= #enchantmentLuckNetherite price run function mi:maps/power_plant/logic/interactions/others/enchantment_luck_buy_team1
execute if score $powerPlant map matches 1 if entity @s[team=team2] if score #temp ct.paper >= #enchantmentLuckPaper price if score #temp ct.netherite >= #enchantmentLuckNetherite price run function mi:maps/power_plant/logic/interactions/others/enchantment_luck_buy_team2
