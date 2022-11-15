summon minecraft:marker 74.5 20.5 -104.5 {Tags:["reset.objectMarker"]}

# Paper Generators
clone 68 27 -129 68 28 -122 102 27 -129

clone 212 27 -129 212 28 -122 178 27 -129

# Coal Generators
execute at @e[tag=location.team1.coal] run setblock ~ ~ ~ minecraft:coal_ore replace

execute at @e[tag=location.team2.coal] run setblock ~ ~ ~ minecraft:coal_ore replace

# Bone Generators
execute at @e[tag=location.team1.bone] run setblock ~ ~ ~ minecraft:podzol
execute at @e[tag=location.team1.bone] run setblock ~ ~1 ~ minecraft:birch_wall_sign[facing=north]{Color:"black",Text1:'{"text":"Like this"}',Text2:'{"text":"headstone?"}',Text3:'{"text":"Give us a call"}',Text4:'{"text":"at 1-800-DEAD"}'} destroy

execute at @e[tag=location.team2.bone] run setblock ~ ~ ~ minecraft:podzol
execute at @e[tag=location.team2.bone] run setblock ~ ~1 ~ minecraft:spruce_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Like this"}',Text2:'{"text":"headstone?"}',Text3:'{"text":"Give us a call"}',Text4:'{"text":"at 1-800-DEAD"}'} destroy

# Gunpowder Generators
execute at @e[tag=location.team1.gunpowder] run setblock 134 19 -154 minecraft:coal_block replace

execute at @e[tag=location.team2.gunpowder] run setblock 146 19 -100 minecraft:coal_block replace

# Spider Eye Generators
clone 124 19 -179 129 20 -174 124 19 -171
setblock 129 20 -166 minecraft:birch_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Shorten Track"}',Text2:'{"text":"[ 0 / 2 ]"}',Text3:'[{"score":{"name":"#spiderEyeTrack1Paper","objective":"price"}},{"text":" Paper"}]',Text4:'[{"score":{"name":"#spiderEyeTrack1SpiderEye","objective":"price"}},{"text":" Spider Eyes"}]'} destroy

clone 151 19 -80 156 20 -75 151 19 -88
setblock 151 20 -88 minecraft:spruce_wall_sign[facing=north]{Color:"black",Text1:'{"text":"Shorten Track"}',Text2:'{"text":"[ 0 / 2 ]"}',Text3:'[{"score":{"name":"#spiderEyeTrack1Paper","objective":"price"}},{"text":" Paper"}]',Text4:'[{"score":{"name":"#spiderEyeTrack1SpiderEye","objective":"price"}},{"text":" Spider Eyes"}]'} destroy

# Slimeball Generators
clone 97 13 -176 105 15 -174 97 13 -121
setblock 97 16 -119 minecraft:oak_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Repair Reactor"}',Text2:'[{"score":{"name":"#slimeballReactorPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#slimeballReactorSlimeball","objective":"price"}},{"text":" Slimeballs"}]'} destroy

clone 175 13 -80 183 15 -78 175 13 -132
setblock 183 16 -132 minecraft:oak_wall_sign[facing=north]{Color:"black",Text1:'{"text":"Repair Reactor"}',Text2:'[{"score":{"name":"#slimeballReactorPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#slimeballReactorSlimeball","objective":"price"}},{"text":" Slimeballs"}]'} destroy

# Forge
fill 75 15 -116 75 13 -120 minecraft:air replace
fill 77 15 -122 81 13 -122 minecraft:air replace
fill 83 15 -120 83 13 -116 minecraft:air replace
setblock 76 14 -118 minecraft:furnace[facing=east]{Lock:"ae88"} destroy
setblock 79 15 -121 minecraft:barrier replace
setblock 82 14 -118 minecraft:blast_furnace[facing=west]{Lock:"ae88"} destroy
setblock 82 13 -116 minecraft:hopper[facing=west]{Lock:"ae88"} destroy
setblock 81 13 -116 minecraft:chest[facing=west]{Lock:"ae88"} destroy
setblock 79 15 -122 minecraft:oak_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Start Forge"}',Text3:'[{"score":{"name":"#forgeStart","objective":"price"}},{"text":" Paper"}]'} destroy
setblock 79 14 -122 minecraft:oak_button[face=wall,facing=south] replace

fill 205 15 -135 205 13 -131 minecraft:air replace
fill 203 15 -129 199 13 -129 minecraft:air replace
fill 197 15 -131 197 13 -135 minecraft:air replace
setblock 204 14 -133 minecraft:furnace[facing=west]{Lock:"ae88"} destroy
setblock 201 15 -130 minecraft:barrier replace
setblock 198 14 -133 minecraft:blast_furnace[facing=east]{Lock:"ae88"} destroy
setblock 198 13 -135 minecraft:hopper[facing=east]{Lock:"ae88"} destroy
setblock 199 13 -135 minecraft:chest[facing=east]{Lock:"ae88"} destroy
setblock 201 15 -129 minecraft:oak_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Start Forge"}',Text3:'[{"score":{"name":"#forgeStart","objective":"price"}},{"text":" Paper"}]'} destroy
setblock 201 14 -129 minecraft:oak_button[face=wall,facing=north] replace

# Wall Street
execute unless score $rushMode mode matches 1 run setblock 75 30 -112 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Wall Street"}',Text3:'{"text":"Exchange"}'} destroy

execute unless score $rushMode mode matches 1 run setblock 75 29 -110 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#wallStreet1","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet1","objective":"vars"}},{"text":" Stock"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 75 29 -112 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#wallStreet2","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet2","objective":"vars"}},{"text":" Stock"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 75 29 -114 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#wallStreet3","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet3","objective":"vars"}},{"text":" Stock"}]'} destroy

execute unless score $rushMode mode matches 1 run setblock 75 28 -114 minecraft:birch_button[face=wall,facing=east] replace
execute unless score $rushMode mode matches 1 run setblock 75 28 -112 minecraft:birch_button[face=wall,facing=east] replace
execute unless score $rushMode mode matches 1 run setblock 75 28 -110 minecraft:birch_button[face=wall,facing=east] replace

execute unless score $rushMode mode matches 1 run setblock 205 30 -139 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Wall Street"}',Text3:'{"text":"Exchange"}'} destroy

execute unless score $rushMode mode matches 1 run setblock 205 29 -141 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#wallStreet1","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet1","objective":"vars"}},{"text":" Stock"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 205 29 -139 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#wallStreet2","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet2","objective":"vars"}},{"text":" Stock"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 205 29 -137 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#wallStreet3","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#wallStreet3","objective":"vars"}},{"text":" Stock"}]'} destroy

execute unless score $rushMode mode matches 1 run setblock 205 28 -141 minecraft:spruce_button[face=wall,facing=west] replace
execute unless score $rushMode mode matches 1 run setblock 205 28 -139 minecraft:spruce_button[face=wall,facing=west] replace
execute unless score $rushMode mode matches 1 run setblock 205 28 -137 minecraft:spruce_button[face=wall,facing=west] replace

execute if score $rushMode mode matches 1 run setblock 75 30 -112 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Wall Street"}',Text3:'{"text":"Disabled"}'} destroy
execute if score $rushMode mode matches 1 run fill 75 28 -114 75 29 -110 minecraft:air replace

execute if score $rushMode mode matches 1 run setblock 205 30 -139 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Wall Street"}',Text3:'{"text":"Disabled"}'} destroy
execute if score $rushMode mode matches 1 run fill 205 28 -141 205 29 -137 minecraft:air replace

# Barricade 1
clone 100 14 -79 102 16 -78 100 14 -98
setblock 101 16 -97 minecraft:oak_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#barricade1","objective":"price"}},{"text":" Paper"}]'} destroy

clone 178 14 -175 180 16 -174 178 14 -154
setblock 179 16 -154 minecraft:oak_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#barricade1","objective":"price"}},{"text":" Paper"}]'} destroy

# Barricade 2
clone 93 14 -80 94 16 -79 93 14 -109
setblock 94 15 -108 minecraft:oak_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#barricade2","objective":"price"}},{"text":" Paper"}]'} destroy

clone 186 14 -175 187 16 -174 186 14 -143
setblock 186 15 -143 minecraft:oak_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#barricade2","objective":"price"}},{"text":" Paper"}]'} destroy

# Barricade 3
setblock 125 19 -94 oak_planks replace
setblock 125 20 -94 oak_stairs[facing=north,half=bottom,shape=straight] replace
setblock 125 19 -95 oak_stairs[facing=east,half=top,shape=straight] replace
setblock 125 20 -95 oak_stairs[facing=north,half=bottom,shape=straight] replace
setblock 124 19 -94 minecraft:gravel replace
setblock 123 19 -96 minecraft:gravel replace
setblock 122 19 -96 minecraft:gravel replace
setblock 126 19 -94 minecraft:oak_button[face=wall,facing=east] replace
setblock 126 20 -94 minecraft:oak_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#sabotageBarricade","objective":"price"}},{"text":" Paper"}]'} destroy

setblock 155 19 -160 minecraft:spruce_planks replace
setblock 155 20 -160 minecraft:spruce_stairs[facing=west,half=bottom,shape=straight] replace
setblock 155 19 -159 minecraft:spruce_stairs[facing=south,half=top,shape=straight] replace
setblock 155 20 -159 minecraft:spruce_stairs[facing=south,half=bottom,shape=inner_right] replace
setblock 156 19 -160 minecraft:gravel replace
setblock 157 19 -158 minecraft:gravel replace
setblock 158 19 -158 minecraft:gravel replace
setblock 154 19 -160 minecraft:oak_button[face=wall,facing=west] replace
setblock 154 20 -160 minecraft:oak_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Clear Barricade"}',Text3:'[{"score":{"name":"#sabotageBarricade","objective":"price"}},{"text":" Paper"}]'} destroy

# Team Upgrades
tp @e[type=minecraft:marker,tag=reset.objectMarker] 74.5 20.5 -104.5 -90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/max_health
tp @e[type=minecraft:marker,tag=reset.objectMarker] 206.5 20.5 -145.5 90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/max_health

tp @e[type=minecraft:marker,tag=reset.objectMarker] 74.5 20.5 -107.5 -90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/swiftness
tp @e[type=minecraft:marker,tag=reset.objectMarker] 206.5 20.5 -142.5 90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/swiftness

tp @e[type=minecraft:marker,tag=reset.objectMarker] 74.5 20.5 -110.5 -90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/bank_account
tp @e[type=minecraft:marker,tag=reset.objectMarker] 206.5 20.5 -139.5 90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/bank_account

tp @e[type=minecraft:marker,tag=reset.objectMarker] 74.5 20.5 -113.5 -90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/recycling
tp @e[type=minecraft:marker,tag=reset.objectMarker] 206.5 20.5 -136.5 90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/recycling

tp @e[type=minecraft:marker,tag=reset.objectMarker] 74.5 20.5 -116.5 -90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/management
tp @e[type=minecraft:marker,tag=reset.objectMarker] 206.5 20.5 -133.5 90.0 0.0
execute as @e[type=minecraft:marker,tag=reset.objectMarker] at @s run function mi:logic/resets/structures/team_upgrades/management

# Sentries
execute unless score $rushMode mode matches 1 run setblock 79 30 -103 minecraft:birch_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Deploy Sentry"}',Text3:'[{"score":{"name":"#sentry","objective":"price"}},{"text":" Tokens"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 79 28 -103 minecraft:birch_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Sentry Count"}',Text3:'{"text":"[ 0 / 10 ]"}'} destroy
execute unless score $rushMode mode matches 1 run setblock 79 29 -103 minecraft:birch_button[facing=north] replace

execute unless score $rushMode mode matches 1 run setblock 201 30 -148 minecraft:spruce_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Deploy Sentry"}',Text3:'[{"score":{"name":"#sentry","objective":"price"}},{"text":" Tokens"}]'} destroy
execute unless score $rushMode mode matches 1 run setblock 201 28 -148 minecraft:spruce_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Sentry Count"}',Text3:'{"text":"[ 0 / 10 ]"}'} destroy
execute unless score $rushMode mode matches 1 run setblock 201 29 -148 minecraft:spruce_button[facing=south] replace

execute if score $rushMode mode matches 1 run setblock 79 30 -103 minecraft:birch_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Sentries"}',Text3:'{"text":"Disabled"}'} destroy
execute if score $rushMode mode matches 1 run setblock 79 28 -103 minecraft:air replace
execute if score $rushMode mode matches 1 run setblock 79 29 -103 minecraft:air replace

execute if score $rushMode mode matches 1 run setblock 201 30 -148 minecraft:spruce_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Sentries"}',Text3:'{"text":"Disabled"}'} destroy
execute if score $rushMode mode matches 1 run setblock 201 28 -148 minecraft:air
execute if score $rushMode mode matches 1 run setblock 201 29 -148 minecraft:air

# Tavern
setblock 73 19 -143 minecraft:barrel[facing=east]{Lock:"1e88"} destroy
setblock 74 19 -147 minecraft:barrel[facing=east]{Lock:"1e88"} destroy
setblock 74 19 -149 minecraft:barrel[facing=east]{Lock:"1e88"} destroy
setblock 73 20 -142 minecraft:brewing_stand{Lock:"1e88"} destroy
setblock 74 20 -150 minecraft:brewing_stand{Lock:"1e88"} destroy

setblock 207 19 -108 minecraft:barrel[facing=west]{Lock:"1e88"} destroy
setblock 206 19 -104 minecraft:barrel[facing=west]{Lock:"1e88"} destroy
setblock 206 19 -102 minecraft:barrel[facing=west]{Lock:"1e88"} destroy
setblock 207 20 -109 minecraft:brewing_stand{Lock:"1e88"} destroy
setblock 206 20 -101 minecraft:brewing_stand{Lock:"1e88"} destroy

# Sabotages
fill 133 21 -96 133 21 -92 minecraft:lime_concrete replace
fill 132 21 -96 132 21 -92 minecraft:birch_button[face=wall,facing=west] replace
fill 133 19 -96 133 19 -92 minecraft:lime_concrete replace
fill 132 19 -96 132 19 -92 minecraft:birch_button[face=wall,facing=west] replace
setblock 132 22 -96 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Factory Shutdown","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Factory Shutdown\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Disables the enemy\'s resource production for 90 seconds.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#factoryShutdown","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 22 -95 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Security Breach","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Security Breach\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Resets the opponent\'s armor.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#securityBreach","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 22 -94 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Plague","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Plague\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Halves all enemy players\' health for 5 minutes.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#plague","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 22 -93 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Summon Wither","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Summon Wither\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Do I really need to explain this one?.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#summonWither","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 22 -92 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Nuke","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Nuke\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Last resort. Kills all baddies on your side. Irradiates your side of the field.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#nuke","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 20 -96 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Cloaking Field","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Cloaking Field\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Makes all friendly enemies invisible for a short time.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#cloakingField","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 20 -95 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Bulwark","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Bulwark\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Significantly increases friendly mob armor temporarily.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#bulwark","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 20 -94 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Daylight Savings","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Daylight Savings\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Invokes the blessings of Apollo to instantly turn it to morning. Great for swarms of mobs that burn!\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#daylightSavings","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 20 -93 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Direct Exposure","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Direct Exposure\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Teleports the enemies outside their base. Camper no camping!\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#directExposure","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 132 20 -92 minecraft:birch_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Direct Deposit","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Direct Deposit\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Temporarily unlocks a zipline that can deposit mobs into the opponent\'s upstairs room.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#directDeposit","objective":"price"}},{"text":" Stock"}]'} destroy

fill 147 21 -158 147 21 -162 minecraft:lime_terracotta replace
fill 148 21 -158 148 21 -162 minecraft:spruce_button[face=wall,facing=east] replace
fill 147 19 -158 147 19 -162 minecraft:lime_terracotta replace
fill 148 19 -158 148 19 -162 minecraft:spruce_button[face=wall,facing=east] replace
setblock 148 22 -158 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Factory Shutdown","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Factory Shutdown\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Disables the enemy\'s resource production for 90 seconds.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#factoryShutdown","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 22 -159 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Security Breach","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Security Breach\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Resets the opponent\'s armor.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#securityBreach","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 22 -160 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Plague","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Plague\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Halves all enemy players\' health for 5 minutes.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#plague","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 22 -161 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Summon Wither","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Summon Wither\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Do I really need to explain this one?.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#summonWither","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 22 -162 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Nuke","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Nuke\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Last resort. Kills all baddies on your side. Don\'t worry, you\'re safe.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#nuke","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 20 -158 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Cloaking Field","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Cloaking Field\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Makes all friendly enemies invisible for a short time.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#cloakingField","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 20 -159 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Bulwark","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Bulwark\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Significantly increases friendly mob armor temporarily.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#bulwark","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 20 -160 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Daylight Savings","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Daylight Savings\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Invokes the blessings of Apollo to instantly turn it to morning. Great for swarms of mobs that burn!\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#daylightSavings","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 20 -161 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Direct Exposure","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Direct Exposure\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Teleports the enemies outside their base. Camper no camping!\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#directExposure","objective":"price"}},{"text":" Stock"}]'} destroy
setblock 148 20 -162 minecraft:spruce_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Direct Deposit","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Direct Deposit\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Temporarily unlocks a zipline that can deposit mobs into the opponent\'s upstairs room.\\",\\"color\\":\\"yellow\\"}]"}}',Text3:'[{"score":{"name":"#directDeposit","objective":"price"}},{"text":" Stock"}]'} destroy

# Direct Deposit (Upstairs Blocks)
setblock 110 27 -124 minecraft:white_concrete replace
setblock 110 27 -127 minecraft:white_concrete replace

setblock 170 27 -124 minecraft:stone_bricks replace
setblock 170 27 -127 minecraft:stone_bricks replace

fill 109 31 -124 171 31 -124 minecraft:air replace
fill 171 31 -127 109 31 -127 minecraft:air replace
fill 140 30 -128 140 31 -123 minecraft:barrier replace

fill 108 28 -123 108 29 -128 minecraft:white_stained_glass_pane[north=true,south=true] replace
fill 108 30 -123 108 30 -128 minecraft:light_blue_stained_glass_pane[north=true,south=true] replace

fill 172 28 -128 172 28 -123 minecraft:black_stained_glass_pane[north=true,south=true] replace
fill 172 29 -128 172 30 -123 minecraft:red_stained_glass_pane[north=true,south=true] replace

# Enchantments
setblock 136 20 -127 minecraft:warped_wall_sign[facing=south]{Color:"black",Text2:'[{"score":{"name":"#enchanting","objective":"price"}},{"text":" Tokens"}]'} destroy
setblock 136 20 -124 minecraft:warped_wall_sign[facing=north]{Color:"black",Text1:'{"text":"Luck Modifier"}',Text2:'{"text":"[ 0 / 3 ]"}',Text3:'[{"score":{"name":"#enchantmentLuckPaper","objective":"price"}},{"text":" Paper"}]',Text4:'[{"score":{"name":"#enchantmentLuckNetherite","objective":"price"}},{"text":" Netherite"}]'} destroy
setblock 136 19 -124 minecraft:warped_button[facing=north] replace

setblock 144 20 -124 minecraft:crimson_wall_sign[facing=north]{Color:"black",Text2:'[{"score":{"name":"#enchanting","objective":"price"}},{"text":" Tokens"}]'} destroy
setblock 144 20 -127 minecraft:crimson_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Luck Modifier"}',Text2:'{"text":"[ 0 / 3 ]"}',Text3:'[{"score":{"name":"#enchantmentLuckPaper","objective":"price"}},{"text":" Paper"}]',Text4:'[{"score":{"name":"#enchantmentLuckNetherite","objective":"price"}},{"text":" Netherite"}]'} destroy
setblock 144 19 -127 minecraft:crimson_button[facing=south] replace

# Forfeit
setblock 107 22 -100 minecraft:birch_button[face=wall,facing=north] replace
setblock 107 20 -99 minecraft:red_concrete replace

setblock 173 22 -151 minecraft:spruce_button[face=wall,facing=south] replace
setblock 173 20 -152 minecraft:red_terracotta replace

# Mob Shop
fill 90 20 -99 93 22 -99 minecraft:air replace
fill 187 20 -152 190 22 -152 minecraft:air replace

# Quantum Tunnel
setblock 86 20 -156 minecraft:red_concrete replace
setblock 86 20 -155 minecraft:birch_button[face=wall,facing=south] replace
setblock 86 21 -155 minecraft:birch_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Quantum Tunnel"}',Text3:'[{"score":{"name":"#quantumTunnel","objective":"price"}},{"text":" Tokens"}]'} destroy

setblock 194 20 -95 minecraft:red_terracotta replace
setblock 194 20 -96 minecraft:spruce_button[face=wall,facing=north] replace
setblock 194 21 -96 minecraft:spruce_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Quantum Tunnel"}',Text3:'[{"score":{"name":"#quantumTunnel","objective":"price"}},{"text":" Tokens"}]'} destroy

# Tokens
setblock 102 22 -166 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'{"text":"Monster Token"}',Text3:'{"text":"Exchange"}'} destroy
setblock 102 21 -164 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenCoal","objective":"price"}},{"text":" Coal"}]'} destroy
setblock 102 21 -165 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenBone","objective":"price"}},{"text":" Bones"}]'} destroy
setblock 102 21 -166 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenGunpowder","objective":"price"}},{"text":" Gunpowder"}]'} destroy
setblock 102 21 -167 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenSpiderEye","objective":"price"}},{"text":" Spider Eyes"}]'} destroy
setblock 102 21 -168 minecraft:birch_wall_sign[facing=east]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenSlimeball","objective":"price"}},{"text":" Slimeballs"}]'} destroy

setblock 178 22 -86 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'{"text":"Monster Token"}',Text3:'{"text":"Exchange"}'} destroy
setblock 178 21 -88 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenCoal","objective":"price"}},{"text":" Coal"}]'} destroy
setblock 178 21 -87 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenBone","objective":"price"}},{"text":" Bones"}]'} destroy
setblock 178 21 -86 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenGunpowder","objective":"price"}},{"text":" Gunpowder"}]'} destroy
setblock 178 21 -85 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenSpiderEye","objective":"price"}},{"text":" Spider Eyes"}]'} destroy
setblock 178 21 -84 minecraft:spruce_wall_sign[facing=west]{Color:"black",Text2:'[{"score":{"name":"#monsterTokenPaper","objective":"price"}},{"text":" Paper"}]',Text3:'[{"score":{"name":"#monsterTokenSlimeball","objective":"price"}},{"text":" Slimeballs"}]'} destroy

# Neuron Worms
setblock 88 15 -104 minecraft:red_concrete replace
setblock 88 15 -105 minecraft:oak_button[face=wall,facing=north] replace
setblock 88 16 -105 minecraft:birch_wall_sign[facing=north]{Color:"black",Text2:'{"text":"Neuron Worm"}',Text3:'[{"score":{"name":"#neuronWorm","objective":"price"}},{"text":" Tokens"}]'} destroy

setblock 192 15 -147 minecraft:red_terracotta replace
setblock 192 15 -146 minecraft:oak_button[face=wall,facing=south] replace
setblock 192 16 -146 minecraft:spruce_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Neuron Worm"}',Text3:'[{"score":{"name":"#neuronWorm","objective":"price"}},{"text":" Tokens"}]'} destroy

kill @e[type=minecraft:marker,tag=reset.objectMarker]
