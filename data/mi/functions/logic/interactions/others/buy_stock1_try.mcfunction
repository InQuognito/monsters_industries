function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute if score #stockPercent temp >= #wallStreetMax vars run title @s actionbar {"text":"You have too much stock to be able to purchase more stock!","color":"red"}
execute if score #stockPercent temp < #wallStreetMax vars unless score #temp ct.paper >= #wallStreet1 price run title @s actionbar {"text":"You don't have enough paper to purchase stock!","color":"red"}

execute if score #stockPercent temp < #wallStreetMax vars if score #temp ct.paper >= #wallStreet1 price run function mi:logic/interactions/others/buy_stock1
