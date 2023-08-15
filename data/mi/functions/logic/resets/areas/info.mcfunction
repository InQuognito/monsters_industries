# Core
summon minecraft:text_display -26.5 7.0 -90.5 {text:'{"text":"Core","color":"white","bold":true}',Rotation:[90f,0f]}
setblock -27 6 -92 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/core/how_to_win"}}]','[{"text":"How to Win"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 6 -91 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/core/book_shop"}}]','[{"text":"Book Shop"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 6 -90 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/core/other_shops"}}]','[{"text":"Other Shops"}]','[""]','[""]']},is_waxed:1b} destroy

# Resources
summon minecraft:text_display -26.5 7.0 -86.5 {text:'{"text":"Resources","color":"white","bold":true}',Rotation:[90f,0f]}
setblock -27 7 -87 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/paper"}}]','[{"text":"Paper"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 6 -88 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/coal"}}]','[{"text":"Coal"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 6 -87 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/bone"}}]','[{"text":"Bones"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 6 -86 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/gunpowder"}}]','[{"text":"Gunpowder"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 5 -88 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/spider_eye"}}]','[{"text":"Spider Eyes"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 5 -87 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/slimeball"}}]','[{"text":"Slimeballs"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -27 5 -86 minecraft:birch_wall_sign[facing=west]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/resources/netherite"}}]','[{"text":"Netherite"}]','[""]','[""]']},is_waxed:1b} destroy

# Areas
summon minecraft:text_display -30.5 7.0 -90.5 {text:'{"text":"Areas","color":"white","bold":true}',Rotation:[-90f,0f]}
setblock -31 6 -90 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/areas/main_building"}}]','[{"text":"Main Building"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -31 6 -91 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/areas/outside"}}]','[{"text":"Outside"}]','[""]','[""]']},is_waxed:1b} destroy
setblock -31 6 -92 minecraft:birch_wall_sign[facing=east]{front_text:{color:"black",messages:['[{"text":"","clickEvent":{"action":"run_command","value":"/execute as @p run function mi:logic/info/areas/basement"}}]','[{"text":"Basement"}]','[""]','[""]']},is_waxed:1b} destroy
