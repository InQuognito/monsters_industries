loot give @s loot mi:mobs/spiders/spider

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 run scoreboard players operation skeletonScaledPaper price += #mobShopMult temp
execute unless score $rushMode mode matches 1 run scoreboard players operation skeletonScaledSpiderEye price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
