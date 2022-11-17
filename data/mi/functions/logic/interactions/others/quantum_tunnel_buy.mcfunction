execute if entity @s[team=team1] run scoreboard players set #team1QuantumTunnel temp 1
execute if entity @s[team=team2] run scoreboard players set #team2QuantumTunnel temp 1

data merge block ^ ^1 ^ {Text2:'{"text":"Repeat Previous"}',Text3:'{"text":"Operation"}'}

execute if entity @s[team=team1] run setblock ^ ^ ^-1 minecraft:lime_concrete replace
execute if entity @s[team=team2] run setblock ^ ^ ^-1 minecraft:lime_terracotta replace

scoreboard players operation clearMonsterToken temp = #quantumTunnel price
function mi:logic/currency/apply_price
