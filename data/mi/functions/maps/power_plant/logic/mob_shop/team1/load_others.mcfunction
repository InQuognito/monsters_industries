function mi:maps/power_plant/logic/mob_shop/team1/clear

summon minecraft:text_display 104.5 21.75 -98.5 {Tags:["team1","mobShop"],Rotation:[180f,0f],text:'{"text":"Undead","color":"yellow","bold":false}'}
summon minecraft:text_display 104.5 21.25 -98.5 {Tags:["team1","mobShop"],Rotation:[180f,0f],text:'{"text":"Others","color":"gold","bold":true}'}

summon minecraft:glow_item_frame 101.5 22.5 -98.5 {Tags:["team1","mobShop","creeper"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:creeper_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Creeper"}'}}}}
summon minecraft:glow_item_frame 100.5 22.5 -98.5 {Tags:["team1","mobShop","slime"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Slime"}'}}}}
summon minecraft:glow_item_frame 99.5 22.5 -98.5 {Tags:["team1","mobShop","phantom"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:phantom_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Phantom"}'}}}}
summon minecraft:glow_item_frame 98.5 22.5 -98.5 {Tags:["team1","mobShop","villager"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Villager"}'}}}}
execute if score #team1NeuronWorm temp matches 1 run summon minecraft:glow_item_frame 97.5 22.5 -98.5 {Tags:["team1","mobShop","neuronWorm"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":"Neuron Worm"}'}}}}

setblock 97 21 -99 minecraft:air replace
execute if score #team1NeuronWorm temp matches 1 run setblock 97 21 -99 minecraft:birch_button[face=wall,facing=north] replace

scoreboard players set #team1MobShop temp 1
