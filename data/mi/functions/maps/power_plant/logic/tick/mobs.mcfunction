teleport @e[team=team1,tag=newMob,x=140,y=18,z=-141,dx=1,dy=2,dz=5] 145.0 19.5 -138.0
teleport @e[team=team1,tag=newMob,x=140,y=18,z=-115,dx=1,dy=2,dz=5] 145.0 19.5 -112.0

teleport @e[team=team2,tag=newMob,x=139,y=18,z=-141,dx=1,dy=2,dz=5] 136.0 19.5 -138.0
teleport @e[team=team2,tag=newMob,x=139,y=18,z=-115,dx=1,dy=2,dz=5] 136.0 19.5 -112.0

execute as @e[type=#mi:spiders,team=team2,x=139,y=19,z=-171,dx=0,dy=13,dz=88] at @s run teleport @s ~-0.5 ~ ~
execute as @e[type=#mi:spiders,team=team1,x=141,y=19,z=-171,dx=0,dy=13,dz=88] at @s run teleport @s ~0.5 ~ ~
