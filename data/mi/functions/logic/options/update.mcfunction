data modify storage mi:data options set value ['{"text":"Options\\n","color":"light_purple","bold":true,"underlined":true}','{"text":"Difficulty: ","color":"white","bold":false,"underlined":false}','""','{"text":"\\nStock Limit: ","color":"white","bold":false,"underlined":false}','{"score":{"name":"$stockLimit","objective":"options"},"color":"blue","bold":false,"underlined":false}','{"text":"\\nRush Mode: ","color":"white","bold":false,"underlined":false}','""']

execute if score $difficulty options matches 0 run data modify storage mi:data options[2] set value '{"text":"Casual","color":"green","bold":false,"underlined":false}'
execute if score $difficulty options matches 1 run data modify storage mi:data options[2] set value '{"text":"Hardened","color":"yellow","bold":false,"underlined":false}'
execute if score $difficulty options matches 2 run data modify storage mi:data options[2] set value '{"text":"Nightmare","color":"red","bold":false,"underlined":false}'

execute if score $rushMode options matches 0 run data modify storage mi:data options[6] set value '{"text":"OFF","color":"red","bold":false,"underlined":false}'
execute if score $rushMode options matches 1 run data modify storage mi:data options[6] set value '{"text":"ON","color":"green","bold":false,"underlined":false}'

data modify entity @e[type=minecraft:text_display,tag=optionsDisplay,limit=1] text set value '{"storage":"mi:data","nbt":"options[]","interpret":true,"separator":""}'
