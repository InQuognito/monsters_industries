execute positioned 93.0 15.0 -160.0 as @a[team=team1] if entity @s[dx=8,dy=3,dz=2] run function mi:logic/resources/tools/pickaxe
execute positioned 179.0 15.0 -93.0 as @a[team=team2] if entity @s[dx=8,dy=3,dz=2] run function mi:logic/resources/tools/pickaxe

execute positioned 93.0 15.0 -160.0 as @a[team=team1] unless entity @s[dx=8,dy=3,dz=2] run clear @s #mi:pickaxes
execute positioned 179.0 15.0 -93.0 as @a[team=team2] unless entity @s[dx=8,dy=3,dz=2] run clear @s #mi:pickaxes
