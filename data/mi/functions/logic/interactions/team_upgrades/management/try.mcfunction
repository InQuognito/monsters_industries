function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #monsterTokenCount temp >= #management price run title @s actionbar [{"text":"You don't have enough paper to purchase ","color":"red"},{"text":"Management","color":"gold"},{"text":"!","color":"red"}]

execute if score #monsterTokenCount temp >= #management price run function mi:logic/interactions/team_upgrades/management/buy

execute unless score #monsterTokenCount temp >= #management price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/team_upgrades/reset_input
