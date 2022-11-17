execute positioned 124.0 19.0 -171.0 as @a[team=team1] if entity @s[dx=2,dy=2,dz=4] run tag @s add inMineshaft
execute positioned 154.0 19.0 -87.0 as @a[team=team2] if entity @s[dx=2,dy=2,dz=4] run tag @s add inMineshaft

execute positioned 124.0 19.0 -171.0 unless entity @e[type=minecraft:minecart,dx=2,dy=2,dz=4] as @a[team=team1,tag=inMineshaft] run function mi:logic/resources/tools/minecart
execute positioned 154.0 19.0 -87.0 unless entity @e[type=minecraft:minecart,dx=2,dy=2,dz=4] as @a[team=team2,tag=inMineshaft] run function mi:logic/resources/tools/minecart

clear @a[tag=!inMineshaft] minecraft:minecart

execute positioned 124.0 19.0 -171.0 as @a[team=team1] unless entity @s[dx=2,dy=2,dz=4] run tag @s remove inMineshaft
execute positioned 154.0 19.0 -87.0 as @a[team=team2] unless entity @s[dx=2,dy=2,dz=4] run tag @s remove inMineshaft

execute positioned 124.0 19.0 -171.0 unless entity @a[team=team1,dx=2,dy=2,dz=4] run kill @e[type=minecraft:minecart,dx=2,dy=2,dz=4]
execute positioned 154.0 19.0 -87.0 unless entity @a[team=team2,dx=2,dy=2,dz=4] run kill @e[type=minecraft:minecart,dx=2,dy=2,dz=4]
