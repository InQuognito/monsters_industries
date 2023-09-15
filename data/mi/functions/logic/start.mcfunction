function mi:logic/resets/game/triggers/disable
function mi:logic/resets/game/triggers/enable
function mi:logic/resets/game/gamerules
function mi:logic/resets/game/scoreboards/values

scoreboard players set $gameStage temp 2
scoreboard players reset $countdown timer

execute store result score #playerAmount temp if entity @a
execute store result score #team1Amount temp run team list team1
execute store result score #team2Amount temp run team list team2
execute store result score #spectatorAmount temp run team list spectators

function mi:logic/resets/game/scoreboards/variables

execute if score $difficulty options matches 0 run gamerule keepInventory true
execute if score $difficulty options matches 1 run gamerule keepInventory false

execute if score $stockLimit options matches 250 run bossbar set minecraft:1 max 250
execute if score $stockLimit options matches 500 run bossbar set minecraft:1 max 500
execute if score $stockLimit options matches 1000 run bossbar set minecraft:1 max 1000
bossbar set minecraft:1 visible true

execute if score $stockLimit options matches 250 run bossbar set minecraft:2 max 250
execute if score $stockLimit options matches 500 run bossbar set minecraft:2 max 500
execute if score $stockLimit options matches 1000 run bossbar set minecraft:2 max 1000
bossbar set minecraft:2 visible true

execute as @a run function mi:logic/players/load

function mi:logic/reset_lever

function mi:logic/pre_game/map_voting/random

summon minecraft:marker 0.0 0.0 0.0 {Tags:["inputs.objectMarker"]}

function mi:logic/employees/generation
