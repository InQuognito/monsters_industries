loot give @s loot mi:mobs/spiders/cave_spider

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 run scoreboard players operation caveSpiderScaledPaper price += #mobShopMult temp
execute unless score $rushMode mode matches 1 run scoreboard players operation caveSpiderScaledSpiderEye price += #mobShopMult temp
execute unless score $rushMode mode matches 1 run scoreboard players operation caveSpiderScaledGunpowder price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
