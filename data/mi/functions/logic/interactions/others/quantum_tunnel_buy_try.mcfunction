function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #monsterTokenCount temp >= #quantumTunnel price run title @s actionbar {"text":"You don't have enough tokens to buy the Quantum Tunnel!","color":"red"}

execute if score #monsterTokenCount temp >= #quantumTunnel price at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/others/quantum_tunnel_buy
