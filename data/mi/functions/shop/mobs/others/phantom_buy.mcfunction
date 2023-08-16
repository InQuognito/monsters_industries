loot give @s loot mi:mobs/others/phantom

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode options matches 1 if entity @s[team=team1] run scoreboard players operation phantomScaledPaperTeam1 price += mobShopMult temp
execute unless score $rushMode options matches 1 if entity @s[team=team2] run scoreboard players operation phantomScaledPaperTeam2 price += mobShopMult temp
execute unless score $rushMode options matches 1 if entity @s[team=team1] run scoreboard players operation phantomScaledSlimeballTeam1 price += mobShopMult temp
execute unless score $rushMode options matches 1 if entity @s[team=team2] run scoreboard players operation phantomScaledSlimeballTeam2 price += mobShopMult temp
execute unless score $rushMode options matches 1 if entity @s[team=team1] run scoreboard players operation phantomScaledGunpowderTeam1 price += mobShopMult temp
execute unless score $rushMode options matches 1 if entity @s[team=team2] run scoreboard players operation phantomScaledGunpowderTeam2 price += mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
