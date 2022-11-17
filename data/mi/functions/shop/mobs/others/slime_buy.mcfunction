loot give @s loot mi:mobs/others/slime

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation slimeScaledPaperTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation slimeScaledPaperTeam2 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation slimeScaledSlimeballTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation slimeScaledSlimeballTeam2 price += mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
