data merge block -25 8 -109 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"Nightmare","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Nightmare:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"No Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Drop Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Hardcore\\\\\\"\\",\\"color\\":\\"gray\\"}]"}}]','[""]']},is_waxed:1b}
data merge block -31 8 -120 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"Nightmare","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Nightmare:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"No Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Drop Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Hardcore\\\\\\"\\",\\"color\\":\\"gray\\"}]"}}]','[""]']},is_waxed:1b}

setblock -32 6 -119 minecraft:white_concrete replace
setblock -32 6 -120 minecraft:white_concrete replace
setblock -32 6 -121 minecraft:blue_concrete replace

tellraw @a [{"text":"Mode: [","color":"white"},{"text":"Nightmare","color":"blue"},{"text":"]","color":"white"}]

scoreboard players set $difficulty mode 2

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=east] replace
