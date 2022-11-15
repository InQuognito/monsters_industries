loot give @s loot mi:mobs/skeletons/stray

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation strayScaledPaperTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation strayScaledPaperTeam2 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation strayScaledBoneTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation strayScaledBoneTeam2 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team1] run scoreboard players operation strayScaledSpiderEyeTeam1 price += #mobShopMult temp
execute unless score $rushMode mode matches 1 if entity @s[team=team2] run scoreboard players operation strayScaledSpiderEyeTeam2 price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
