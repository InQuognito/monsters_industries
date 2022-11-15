loot give @s loot mi:mobs/zombies/husk

function mi:logic/currency/set_price
function mi:logic/currency/apply_price

execute unless score $rushMode mode matches 1 run scoreboard players operation huskScaledPaper price += #mobShopMult temp
execute unless score $rushMode mode matches 1 run scoreboard players operation huskScaledCoal price += #mobShopMult temp
execute unless score $rushMode mode matches 1 run scoreboard players operation huskScaledSpiderEye price += #mobShopMult temp
function mi:maps/power_plant/logic/mob_shop/update_prices
