execute if entity @s[team=team1] run scoreboard players set #team1NeuronWorm temp 1
execute if entity @s[team=team2] run scoreboard players set #team2NeuronWorm temp 1

data merge block ^ ^1 ^ {front_text:{color:"black",messages:['[""]','[{"text":"Neuron Worm"}]','[{"text":"Unlocked"}]','[""]']},is_waxed:1b}

execute if entity @s[team=team1] run setblock ^ ^ ^-1 minecraft:lime_concrete replace
execute if entity @s[team=team2] run setblock ^ ^ ^-1 minecraft:lime_terracotta replace

setblock ^ ^ ^ minecraft:air replace

scoreboard players set mobShopMult temp 1
loot give @s loot mi:mobs/others/neuron_worm

scoreboard players operation clearMonsterToken temp = neuronWorm price
function mi:logic/currency/apply_price

advancement grant @s only mi:utility/info/unlock_neuron_worms
