scoreboard players operation $team2 stock += #kill vars

execute if score $difficulty options matches 2 run scoreboard players add #team1Dead temp 1
execute if score $difficulty options matches 2 if score #team1Dead temp >= #team1Amount temp run function mi:logic/teams/team2_win

tag @s add self
tellraw @a[team=team1,tag=!self] [{"text":"💀 ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"red"}]
tellraw @a[team=team2] [{"text":"💀 Your opponent ","color":"green"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"green"}]
tellraw @a[team=spectator] [{"text":"💀 ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has died!","color":"gray"}]
tag @s remove self

function mi:logic/players/death

execute as @r[team=team2] run function mi:logic/resources/sabotage_token
