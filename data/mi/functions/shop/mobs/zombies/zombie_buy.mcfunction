loot give @s loot mi:mobs/zombies/zombie

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation zombieScaledPaperTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation zombieScaledPaperTeam2 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation zombieScaledCoalTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation zombieScaledCoalTeam2 price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
