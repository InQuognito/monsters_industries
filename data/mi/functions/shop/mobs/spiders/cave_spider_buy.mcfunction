loot give @s loot mi:mobs/spiders/cave_spider

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation caveSpiderScaledPaperTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation caveSpiderScaledPaperTeam2 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation caveSpiderScaledSpiderEyeTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation caveSpiderScaledSpiderEyeTeam2 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation caveSpiderScaledGunpowderTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation caveSpiderScaledGunpowderTeam2 price += mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
