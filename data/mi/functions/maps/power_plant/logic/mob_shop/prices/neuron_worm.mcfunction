execute if entity @s[team=team1] run scoreboard players operation neuronWorm1Token price = neuronWormScaledTokenTeam1 price
execute if entity @s[team=team2] run scoreboard players operation neuronWorm1Token price = neuronWormScaledTokenTeam2 price

scoreboard players operation neuronWorm4Token price = neuronWorm1Token price
scoreboard players operation neuronWorm4Token price *= 4 integers

scoreboard players operation neuronWorm8Token price = neuronWorm4Token price
scoreboard players operation neuronWorm8Token price *= 2 integers

scoreboard players operation neuronWorm16Token price = neuronWorm8Token price
scoreboard players operation neuronWorm16Token price *= 2 integers

scoreboard players operation neuronWorm32Token price = neuronWorm16Token price
scoreboard players operation neuronWorm32Token price *= 2 integers

scoreboard players operation neuronWorm64Token price = neuronWorm32Token price
scoreboard players operation neuronWorm64Token price *= 2 integers
