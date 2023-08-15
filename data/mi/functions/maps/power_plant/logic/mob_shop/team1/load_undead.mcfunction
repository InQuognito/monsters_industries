function mi:maps/power_plant/logic/mob_shop/team1/clear

summon minecraft:text_display 104.5 21.75 -98.5 {Tags:["team1","mobShop"],Rotation:[180f,0f],text:'{"text":"Undead","color":"gold","bold":true}'}
summon minecraft:text_display 104.5 21.25 -98.5 {Tags:["team1","mobShop"],Rotation:[180f,0f],text:'{"text":"Others","color":"yellow","bold":false}'}

summon minecraft:glow_item_frame 101.5 22.5 -98.5 {Tags:["team1","mobShop","zombie"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Zombie"}'}}}}
summon minecraft:glow_item_frame 100.5 22.5 -98.5 {Tags:["team1","mobShop","husk"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:husk_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Husk"}'}}}}
summon minecraft:glow_item_frame 99.5 22.5 -98.5 {Tags:["team1","mobShop","skeleton"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:skeleton_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Skeleton"}'}}}}
summon minecraft:glow_item_frame 98.5 22.5 -98.5 {Tags:["team1","mobShop","stray"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Stray"}'}}}}
summon minecraft:glow_item_frame 97.5 22.5 -98.5 {Tags:["team1","mobShop","spider"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:spider_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Spider"}'}}}}
summon minecraft:glow_item_frame 96.5 22.5 -98.5 {Tags:["team1","mobShop","caveSpider"],Facing:2b,Fixed:1b,Invisible:1b,Invulnerable:1b,Item:{id:"minecraft:cave_spider_spawn_egg",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Cave Spider"}'}}}}

fill 96 21 -99 101 21 -99 minecraft:birch_button[face=wall,facing=north] replace

scoreboard players set #team1MobShop temp 0
