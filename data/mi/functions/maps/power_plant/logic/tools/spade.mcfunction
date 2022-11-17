execute positioned 112.0 19.0 -88.0 as @a[team=team1] if entity @s[dx=2,dy=3,dz=4] run function mi:logic/resources/tools/spade
execute positioned 167.0 19.0 -171.0 as @a[team=team2] if entity @s[dx=2,dy=3,dz=4] run function mi:logic/resources/tools/spade

execute positioned 112.0 19.0 -88.0 as @a[team=team1] unless entity @s[dx=2,dy=3,dz=4] run clear @s #mi:shovels
execute positioned 167.0 19.0 -171.0 as @a[team=team2] unless entity @s[dx=2,dy=3,dz=4] run clear @s #mi:shovels
