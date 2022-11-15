execute if score $gameStage temp matches 0 run function mi:logic/tick/lobby
execute if score $gameStage temp matches 2 run function mi:logic/tick/ingame

function mi:logic/tick/effects

execute as @a[tag=!loaded] run function mi:logic/resets/players
