# Join Teams
summon minecraft:text_display -28.5 7.5 -113.5 {text:'{"text":"Team Aqua","color":"aqua","bold":true}',billboard:center}
summon minecraft:text_display -28.5 7.5 -103.5 {text:'{"text":"Team Red","color":"red","bold":true}',billboard:center}

# Options Display
summon minecraft:text_display -25.5 8.0 -108.5 {Tags:["optionsDisplay"],billboard:center}
function mi:logic/options/update

# Difficulty
setblock -31 8 -120 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[{"text":"Mode:"}]','[""]','[{"text":"Casual","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Casual:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Keep Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Normal\\\\\\" Game\\",\\"color\\":\\"gray\\"}]"}}]','[""]']},is_waxed:1b} destroy

setblock -31 7 -119 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[""]','[{"text":"Casual","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Casual:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Keep Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Normal\\\\\\" Game\\",\\"color\\":\\"gray\\"}]"}}]','[""]','[""]']},is_waxed:1b} destroy
setblock -31 7 -120 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[""]','[{"text":"Hardened","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Hardened:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Drop Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Increased Death Penalty\\",\\"color\\":\\"gray\\"}]"}}]','[""]','[""]']},is_waxed:1b} destroy
setblock -31 7 -121 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[""]','[{"text":"Nightmare","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Nightmare:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"No Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Drop Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Hardcore\\\\\\"\\",\\"color\\":\\"gray\\"}]"}}]','[""]','[""]']},is_waxed:1b} destroy

setblock -32 6 -119 minecraft:white_concrete replace
setblock -32 6 -120 minecraft:white_concrete replace
setblock -32 6 -121 minecraft:white_concrete replace

execute if score $difficulty options matches 0 run setblock -32 6 -119 minecraft:blue_concrete replace
execute if score $difficulty options matches 1 run setblock -32 6 -120 minecraft:blue_concrete replace
execute if score $difficulty options matches 2 run setblock -32 6 -121 minecraft:blue_concrete replace

# Stock Limit
setblock -27 8 -120 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[""]','[{"text":"Stock Limit:","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Stock Limit:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"The amount of points needed to win the game.\\",\\"color\\":\\"gray\\"}]"}}]"}}]','[{"text":"1000"}]','[""]']},is_waxed:1b} destroy

setblock -27 7 -121 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[""]','[{"text":"250"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 7 -120 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[""]','[{"text":"500"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 7 -119 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[""]','[{"text":"1000"}]','[""]','[""]']},is_waxed:1b} destroy

setblock -26 6 -121 minecraft:white_concrete replace
setblock -26 6 -120 minecraft:white_concrete replace
setblock -26 6 -119 minecraft:white_concrete replace

execute if score $stockLimit options matches 250 run setblock -26 6 -121 minecraft:blue_concrete replace
execute if score $stockLimit options matches 500 run setblock -26 6 -120 minecraft:blue_concrete replace
execute if score $stockLimit options matches 1000 run setblock -26 6 -119 minecraft:blue_concrete replace

# Rush Mode
setblock -29 7 -122 minecraft:birch_wall_sign[facing=south]{front_text:{color:"black",messages:['[""]','[{"text":"Rush Mode:","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Rush Mode:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Begin the game with 1 employee\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Disables cost scaling\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Sentries are disabled\\",\\"color\\":\\"gray\\"}]"}}]','[{"text":"OFF"}]','[""]']},is_waxed:1b} destroy

execute if score $rushMode options matches 0 run setblock -29 6 -123 minecraft:red_concrete replace
execute if score $rushMode options matches 1 run setblock -29 6 -123 minecraft:lime_concrete replace

# Credits
function mi:logic/resets/areas/credits
