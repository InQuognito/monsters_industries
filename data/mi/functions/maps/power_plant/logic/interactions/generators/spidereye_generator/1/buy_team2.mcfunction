scoreboard players set #team2SpiderEyeGenerator temp 1

fill 154 19 -87 156 19 -86 minecraft:air
setblock 154 19 -86 minecraft:rail[shape=south_east] replace
setblock 156 19 -86 minecraft:rail[shape=south_west] replace
setblock 155 19 -86 minecraft:powered_rail[shape=east_west] replace

data merge block 151 20 -88 {front_text:{color:"black",messages:['[""]','[{"text":"[ 1 / 2 ]"}]','[{"score":{"name":"spiderEyeTrack2Paper","objective":"price"}},{"text":" Paper"}]','[{"score":{"name":"spiderEyeTrack2SpiderEye","objective":"price"}},{"text":" Spider Eyes"}]']},is_waxed:1b}

tag @s add self
title @s actionbar {"text":"You shortened the track!","color":"green"}
tellraw @a[team=team2,tag=!self] [{"selector":"@s","color":"yellow"},{"text":" shortened the mineshaft track!","color":"green"}]
tag @s remove self

scoreboard players operation clearPaper temp = spiderEyeTrack1Paper price
scoreboard players operation clearSpiderEye temp = spiderEyeTrack1SpiderEye price
function mi:logic/currency/apply_price
