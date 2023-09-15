scoreboard players operation $team1 stock += #kill vars

execute if score $difficulty options matches 2 run scoreboard players add #team2Dead temp 1
execute if score $difficulty options matches 2 if score #team2Dead temp >= #team2Amount temp run function mi:logic/teams/team1_win

tag @s add self
tellraw @a[team=team2,tag=!self] [{"text":"💀 ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"red"}]
tellraw @a[team=team1] [{"text":"💀 Your opponent ","color":"green"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"green"}]
tellraw @a[team=spectator] [{"text":"💀 ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"gray"}]
tag @s remove self

function mi:logic/players/death

execute as @r[team=team1] run function mi:logic/resources/sabotage_token
