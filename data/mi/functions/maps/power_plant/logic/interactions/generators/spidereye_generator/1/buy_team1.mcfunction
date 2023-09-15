scoreboard players set #team1SpiderEyeGenerator temp 1

fill 124 19 -168 126 19 -167 minecraft:air
setblock 126 19 -168 minecraft:rail[shape=north_west] replace
setblock 124 19 -168 minecraft:rail[shape=north_east] replace
setblock 125 19 -168 minecraft:powered_rail[shape=east_west] replace

data merge block 129 20 -166 {front_text:{color:"black",messages:['[""]','[{"text":"[ 1 / 2 ]"}]','[{"score":{"name":"spiderEyeTrack2Paper","objective":"price"}},{"text":" Paper"}]','[{"score":{"name":"spiderEyeTrack2SpiderEye","objective":"price"}},{"text":" Spider Eyes"}]']},is_waxed:1b}

tag @s add self
title @s actionbar {"text":"You shortened the track!","color":"green"}
tellraw @a[team=team1,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" shortened the mineshaft track!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = spiderEyeTrack1Paper price
scoreboard players operation clearSpiderEye temp = spiderEyeTrack1SpiderEye price
function mi:logic/currency/apply_price
