execute positioned 132.0 20.0 -155.0 as @a[team=team1] if entity @s[dx=3,dy=7,dz=2] run function mi:logic/resources/tools/lighter
execute positioned 145.0 20.0 -101.0 as @a[team=team2] if entity @s[dx=3,dy=7,dz=2] run function mi:logic/resources/tools/lighter

execute positioned 132.0 20.0 -155.0 as @a[team=team1] unless entity @s[dx=3,dy=7,dz=2] run clear @s minecraft:flint_and_steel
execute positioned 145.0 20.0 -101.0 as @a[team=team2] unless entity @s[dx=3,dy=7,dz=2] run clear @s minecraft:flint_and_steel
