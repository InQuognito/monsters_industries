loot give @s loot mi:mobs/skeletons/skeleton

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation skeletonScaledPaperTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation skeletonScaledPaperTeam2 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation skeletonScaledBoneTeam1 price += mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation skeletonScaledBoneTeam2 price += mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
