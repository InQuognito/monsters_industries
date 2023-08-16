data modify storage mi:data options set value []

data modify storage mi:data options append value '{"text":"Options\\n","color":"light_purple","bold":true,"underlined":true}'

data modify storage mi:data options append value '{"text":"Difficulty: ","color":"white"}'

execute if score $difficulty options matches 0 run data modify storage mi:data options append value '{"text":"Casual","color":"green"}'
execute if score $difficulty options matches 1 run data modify storage mi:data options append value '{"text":"Hardened","color":"yellow"}'
execute if score $difficulty options matches 2 run data modify storage mi:data options append value '{"text":"Nightmare","color":"red"}'

data modify storage mi:data options append value '{"text":"\\n"}'

data modify storage mi:data options append value '{"text":"Stock Limit: ","color":"white"}'

execute if score $stockLimit options matches 250 run data modify storage mi:data options append value '{"text":"250","color":"blue"}'
execute if score $stockLimit options matches 500 run data modify storage mi:data options append value '{"text":"500","color":"blue"}'
execute if score $stockLimit options matches 1000 run data modify storage mi:data options append value '{"text":"1000","color":"blue"}'

data modify storage mi:data options append value '{"text":"\\n"}'

data modify storage mi:data options append value '{"text":"Rush Mode: ","color":"white"}'

execute if score $rushMode options matches 0 run data modify storage mi:data options append value '{"text":"OFF","color":"red"}'
execute if score $rushMode options matches 1 run data modify storage mi:data options append value '{"text":"ON","color":"green"}'

data modify entity @e[type=minecraft:text_display,tag=optionsDisplay,limit=1] text set value {"storage":"mi:data","nbt":"options[]","interpret":true,"separator":""}
