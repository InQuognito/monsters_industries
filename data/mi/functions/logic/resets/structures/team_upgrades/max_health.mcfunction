execute if entity @s[y_rotation=-90.0] run setblock ^ ^ ^1 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[{"text":"Max Health","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Max Health\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Increases maximum health by a small amount.\\",\\"color\\":\\"yellow\\"}]"}}]','[{"text":"[ 0 / 5 ]"}]','[{"score":{"name":"#maxHealth1","objective":"price"}},{"text":" Paper"}]','[""]']},is_waxed:1b} destroy
execute if entity @s[y_rotation=90.0] run setblock ^ ^ ^1 minecraft:spruce_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"Max Health","clickEvent":{"action":"run_command","value":"tellraw @s [\\"\\",{\\"text\\":\\"Max Health\\",\\"color\\":\\"gold\\"},{\\"text\\":\\" - \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Increases maximum health by a small amount.\\",\\"color\\":\\"yellow\\"}]"}}]','[{"text":"[ 0 / 5 ]"}]','[{"score":{"name":"#maxHealth1","objective":"price"}},{"text":" Paper"}]','[""]']},is_waxed:1b} destroy

execute if entity @s[y_rotation=-90.0] run setblock ^ ^-1 ^1 minecraft:birch_button[face=wall,facing=east] replace
execute if entity @s[y_rotation=90.0] run setblock ^ ^-1 ^1 minecraft:spruce_button[face=wall,facing=west] replace

setblock ^ ^ ^ minecraft:redstone_lamp[lit=false] replace
