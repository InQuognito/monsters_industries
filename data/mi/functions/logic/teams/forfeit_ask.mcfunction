tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" would like to turn the company over to the competitor. Do you consent? Doing so will end the match and count as a loss.","color":"yellow"},{"text":"\n"},{"text":"============","color":"dark_gray"},{"text":"\n[ "},{"text":"YES","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mi:logic/teams/team2_win"}},{"text":" ] [ "},{"text":"NO","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mi:logic/teams/forfeit_deny"}},{"text":" ]\n"},{"text":"============","color":"dark_gray"}]
execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" would like to turn the company over to the competitor. Do you consent? Doing so will end the match and count as a loss.","color":"yellow"},{"text":"\n"},{"text":"============","color":"dark_gray"},{"text":"\n[ "},{"text":"YES","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mi:logic/teams/team1_win"}},{"text":" ] [ "},{"text":"NO","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mi:logic/teams/forfeit_deny"}},{"text":" ]\n"},{"text":"============","color":"dark_gray"}]
tag @s remove self
