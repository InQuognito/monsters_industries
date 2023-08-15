function mi:maps/power_plant/logic/mob_shop/team2/clear

summon minecraft:text_display 176.5 21.75 -151.5 {Tags:["team2","mobShop"],text:'{"text":"Undead","color":"yellow","bold":false}'}
summon minecraft:text_display 176.5 21.25 -151.5 {Tags:["team2","mobShop"],text:'{"text":"Others","color":"gold","bold":true}'}

summon minecraft:glow_item_frame 179.5 22.5 -151.5 {Tags:["team2","mobShop","creeper"],Facing:3b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:creeper_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Creeper"}'}}}}
summon minecraft:glow_item_frame 180.5 22.5 -151.5 {Tags:["team2","mobShop","slime"],Facing:3b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:slime_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Slime"}'}}}}
summon minecraft:glow_item_frame 181.5 22.5 -151.5 {Tags:["team2","mobShop","phantom"],Facing:3b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:phantom_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Phantom"}'}}}}
summon minecraft:glow_item_frame 182.5 22.5 -151.5 {Tags:["team2","mobShop","villager"],Facing:3b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Villager"}'}}}}
execute if score #team2NeuronWorm temp matches 1 run summon minecraft:glow_item_frame 183.5 22.5 -151.5 {Tags:["team2","mobShop","neuronWorm"],Facing:3b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":"Neuron Worm"}'}}}}

setblock 183 21 -152 minecraft:air replace
execute if score #team2NeuronWorm temp matches 1 run setblock 183 21 -152 minecraft:spruce_button[face=wall,facing=south] replace

scoreboard players set #team2MobShop temp 1
