scoreboard players operation clearSabotageToken temp = #securityBreach price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] as @a[team=team2] run function mi:logic/interactions/sabotages/security_breach/armor
execute if entity @s[team=team2] as @a[team=team1] run function mi:logic/interactions/sabotages/security_breach/armor

title @s actionbar [{"text":"You have activated Security Breach!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Security Breach!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has activated the Security Breach!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has activated Security Breach!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has activated the Security Breach!","color":"red"}]
tag @s remove self

execute at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/sabotages/single_use_bought
