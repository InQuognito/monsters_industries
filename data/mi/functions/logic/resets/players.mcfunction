function mi:logic/resets/game/triggers/disable
function mi:logic/resets/game/tags

gamemode adventure @s
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.max_health modifier remove 11111111-1111-1111-1111-111111111111

attribute @s generic.attack_damage base set 0.0
attribute @s generic.attack_speed base set 100.0

clear @s

recipe take @s *

function mi:logic/resets/game/advancements

effect clear @s

tag @s add loaded
