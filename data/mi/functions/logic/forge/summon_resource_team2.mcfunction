execute if score #team2 forge matches 1 at @e[tag=location.team2.forge.spawner] run summon minecraft:armor_stand ~ ~ ~ {Tags:["team2","forgeRawOre","forgeFalling"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:iron_ore",Count:1b},{}],DisabledSlots:4144959,Pose:{RightArm:[165f,0f,0f]}}

scoreboard players set #team2Forge timer 600

scoreboard players set #team2ForgeReduction temp 40
scoreboard players operation #team2ForgeReduction temp *= #team2Interval forge

scoreboard players operation #team2Forge timer -= #team2ForgeReduction temp
