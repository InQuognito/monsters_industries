loot give @s loot mi:mobs/spiders/spider

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation spiderScaledPaperTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation spiderScaledPaperTeam2 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation spiderScaledSpiderEyeTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation spiderScaledSpiderEyeTeam2 price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
