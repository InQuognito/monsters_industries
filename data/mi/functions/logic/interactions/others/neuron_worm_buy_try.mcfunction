function mi:logic/prepare_input/north_south

function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #monsterTokenCount temp >= neuronWorm price run title @s actionbar {"text":"You don't have enough tokens to unlock the Neuron Worm!","color":"red"}

execute if score #monsterTokenCount temp >= neuronWorm price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/others/neuron_worm_buy
