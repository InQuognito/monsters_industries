scoreboard players operation clearSabotageToken temp = #summonWither price
function mi:logic/currency/apply_price

execute if entity @s[team=team1] run summon minecraft:wither ~ ~ ~ {CustomName:'"Wither"',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Attributes:[{Name:"minecraft:generic.follow_range",Base:500}],Team:team1,DeathLootTable:"mi:entity_drops/others/wither"}
execute if entity @s[team=team2] run summon minecraft:wither ~ ~ ~ {CustomName:'"Wither"',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Attributes:[{Name:"minecraft:generic.follow_range",Base:500}],Team:team2,DeathLootTable:"mi:entity_drops/others/wither"}

execute if entity @s[team=team1] run advancement grant @a[team=team1] only mi:summon_wither
execute if entity @s[team=team2] run advancement grant @a[team=team2] only mi:summon_wither

title @s actionbar [{"text":"You have summoned the Wither!","color":"green"}]

tag @s add self
execute if entity @s[team=team1] run tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has summoned the Wither!","color":"green"}]
execute if entity @s[team=team1] run tellraw @a[team=team2] [{"text":"The opponent has summoned the Wither!","color":"red"}]

execute if entity @s[team=team2] run tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":"has summoned the Wither!","color":"green"}]
execute if entity @s[team=team2] run tellraw @a[team=team1] [{"text":"The opponent has summoned the Wither!","color":"red"}]
tag @s remove self

execute at @e[type=minecraft:marker,tag=inputs.objectMarker] run function mi:logic/interactions/sabotages/single_use_bought
