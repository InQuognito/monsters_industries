execute if entity @s[team=team1] run scoreboard players operation stray1Paper price = strayScaledPaperTeam1 price
execute if entity @s[team=team2] run scoreboard players operation stray1Paper price = strayScaledPaperTeam2 price
execute if entity @s[team=team1] run scoreboard players operation stray1Bone price = strayScaledBoneTeam1 price
execute if entity @s[team=team2] run scoreboard players operation stray1Bone price = strayScaledBoneTeam2 price
execute if entity @s[team=team1] run scoreboard players operation stray1SpiderEye price = strayScaledSpiderEyeTeam1 price
execute if entity @s[team=team2] run scoreboard players operation stray1SpiderEye price = strayScaledSpiderEyeTeam2 price

scoreboard players operation stray4Paper price = stray1Paper price
scoreboard players operation stray4Bone price = stray1Bone price
scoreboard players operation stray4SpiderEye price = stray1SpiderEye price
scoreboard players operation stray4Paper price *= #4 integers
scoreboard players operation stray4Bone price *= #4 integers
scoreboard players operation stray4SpiderEye price *= #4 integers

scoreboard players operation stray8Paper price = stray4Paper price
scoreboard players operation stray8Bone price = stray4Bone price
scoreboard players operation stray8SpiderEye price = stray4SpiderEye price
scoreboard players operation stray8Paper price *= #2 integers
scoreboard players operation stray8Bone price *= #2 integers
scoreboard players operation stray8SpiderEye price *= #2 integers

scoreboard players operation stray16Paper price = stray8Paper price
scoreboard players operation stray16Bone price = stray8Bone price
scoreboard players operation stray16SpiderEye price = stray8SpiderEye price
scoreboard players operation stray16Paper price *= #2 integers
scoreboard players operation stray16Bone price *= #2 integers
scoreboard players operation stray16SpiderEye price *= #2 integers

scoreboard players operation stray32Paper price = stray16Paper price
scoreboard players operation stray32Bone price = stray16Bone price
scoreboard players operation stray32SpiderEye price = stray16SpiderEye price
scoreboard players operation stray32Paper price *= #2 integers
scoreboard players operation stray32Bone price *= #2 integers
scoreboard players operation stray32SpiderEye price *= #2 integers

scoreboard players operation stray64Paper price = stray32Paper price
scoreboard players operation stray64Bone price = stray32Bone price
scoreboard players operation stray64SpiderEye price = stray32SpiderEye price
scoreboard players operation stray64Paper price *= #2 integers
scoreboard players operation stray64Bone price *= #2 integers
scoreboard players operation stray64SpiderEye price *= #2 integers
