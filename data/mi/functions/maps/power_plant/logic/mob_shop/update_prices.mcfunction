function mi:maps/power_plant/logic/mob_shop/prices/zombie
function mi:maps/power_plant/logic/mob_shop/prices/husk
function mi:maps/power_plant/logic/mob_shop/prices/skeleton
function mi:maps/power_plant/logic/mob_shop/prices/stray
function mi:maps/power_plant/logic/mob_shop/prices/spider
function mi:maps/power_plant/logic/mob_shop/prices/cave_spider
function mi:maps/power_plant/logic/mob_shop/prices/creeper
function mi:maps/power_plant/logic/mob_shop/prices/slime
function mi:maps/power_plant/logic/mob_shop/prices/phantom
function mi:maps/power_plant/logic/mob_shop/prices/villager
function mi:maps/power_plant/logic/mob_shop/prices/neuron_worm

execute if entity @s[team=team1] run function mi:maps/power_plant/logic/mob_shop/update_signs_team1
execute if entity @s[team=team2] run function mi:maps/power_plant/logic/mob_shop/update_signs_team2
