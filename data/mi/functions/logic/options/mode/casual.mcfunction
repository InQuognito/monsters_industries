data merge block -25 8 -109 {front_text:{color:"black",messages:['[{"text":"Mode:"}]','[""]','[{"text":"Casual","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Casual:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Keep Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Normal\\\\\\" Game\\",\\"color\\":\\"gray\\"}]"}}]','[""]']},is_waxed:1b}
data merge block -31 8 -120 {front_text:{color:"black",messages:['[""]','[""]','[{"text":"Casual","clickEvent":{"action":"run_command","value":"tellraw @s [{\\"text\\":\\"Casual:\\",\\"color\\":\\"gold\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Respawns\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Keep Inventory\\",\\"color\\":\\"gray\\"},{\\"text\\":\\"\\\\n\\"},{\\"text\\":\\"- \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"\\\\\\"Normal\\\\\\" Game\\",\\"color\\":\\"gray\\"}]"}}]','[""]']},is_waxed:1b}

setblock -32 6 -119 minecraft:blue_concrete replace
setblock -32 6 -120 minecraft:white_concrete replace
setblock -32 6 -121 minecraft:white_concrete replace

tellraw @a [{"text":"Mode: [","color":"white"},{"text":"Casual","color":"blue"},{"text":"]","color":"white"}]

scoreboard players set $difficulty mode 0

setblock ~ ~ ~ minecraft:stone_button[face=wall,facing=east] replace
