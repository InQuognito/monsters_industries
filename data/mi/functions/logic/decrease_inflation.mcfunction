execute if score zombieScaledPaper price > zombieBasePaper price run scoreboard players operation zombieScaledPaper price -= deflation vars
execute if score zombieScaledCoal price > zombieBaseCoal price run scoreboard players operation zombieScaledCoal price -= deflation vars

execute if score #huskScaledPaper price > #huskBasePaper price run scoreboard players operation #huskScaledPaper price -= deflation vars
execute if score #huskScaledCoal price > #huskBaseCoal price run scoreboard players operation #huskScaledCoal price -= deflation vars
execute if score #huskScaledSpiderEye price > #huskBaseSpiderEye price run scoreboard players operation #huskScaledSpiderEye price -= deflation vars

execute if score #skeletonScaledPaper price > #skeletonBasePaper price run scoreboard players operation #skeletonScaledPaper price -= deflation vars
execute if score #skeletonScaledBone price > #skeletonBaseBone price run scoreboard players operation #skeletonScaledBone price -= deflation vars

execute if score #strayScaledPaper price > #strayBasePaper price run scoreboard players operation #strayScaledPaper price -= deflation vars
execute if score #strayScaledBone price > #strayBaseBone price run scoreboard players operation #strayScaledBone price -= deflation vars
execute if score #strayScaledSpiderEye price > #strayBaseSpiderEye price run scoreboard players operation #strayScaledSpiderEye price -= deflation vars

execute if score #spiderScaledPaper price > #spiderBasePaper price run scoreboard players operation #spiderScaledPaper price -= deflation vars
execute if score #spiderScaledSpiderEye price > #spiderBaseSpiderEye price run scoreboard players operation #spiderScaledSpiderEye price -= deflation vars

execute if score #caveSpiderScaledPaper price > #caveSpiderBasePaper price run scoreboard players operation #caveSpiderScaledPaper price -= deflation vars
execute if score #caveSpiderScaledSpiderEye price > #caveSpiderBaseSpiderEye price run scoreboard players operation #caveSpiderScaledSpiderEye price -= deflation vars
execute if score #caveSpiderScaledGunpowder price > #caveSpiderBaseGunpowder price run scoreboard players operation #caveSpiderScaledGunpowder price -= deflation vars

execute if score #creeperScaledPaper price > #creeperBasePaper price run scoreboard players operation #creeperScaledPaper price -= deflation vars
execute if score #creeperScaledGunpowder price > #creeperBaseGunpowder price run scoreboard players operation #creeperScaledGunpowder price -= deflation vars

execute if score #slimeScaledPaper price > #slimeBasePaper price run scoreboard players operation #slimeScaledPaper price -= deflation vars
execute if score #slimeScaledSlimeball price > #slimeBaseSlimeball price run scoreboard players operation #slimeScaledSlimeball price -= deflation vars

execute if score #phantomScaledPaper price > #phantomBasePaper price run scoreboard players operation #phantomScaledPaper price -= deflation vars
execute if score #phantomScaledSlimeball price > #phantomBaseSlimeball price run scoreboard players operation #phantomScaledSlimeball price -= deflation vars
execute if score #phantomScaledGunpowder price > #phantomBaseGunpowder price run scoreboard players operation #phantomScaledGunpowder price -= deflation vars

execute if score #villagerScaledPaper price > #villagerBasePaper price run scoreboard players operation #villagerScaledPaper price -= deflation vars

execute if score #neuronWormScaledToken price > #neuronWormBaseToken price run scoreboard players operation #neuronWormScaledToken price -= deflation vars

execute if score $powerPlant map matches 1 run function mi:maps/power_plant/logic/mob_shop/update_prices
