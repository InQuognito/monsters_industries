give @s[team=team1] minecraft:firework_rocket{Fireworks:{Flight:127,Explosions:[{Type:4,Colors:[I;6719955]},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4}]},LifeTime:600,display:{Name:'[{"text":"Sniper","italic":false,"color":"aqua"}]',Lore:['[{"text":"-- Crossbow Ammo --","italic":false,"color":"yellow"}]','[{"text":"A firework with an extremely","italic":true,"color":"gray"}]','[{"text":"potent bang and long range.","italic":true,"color":"gray"}]']},HideFlags:127} 4
give @s[team=team2] minecraft:firework_rocket{Fireworks:{Flight:127,Explosions:[{Type:4,Colors:[I;11743532]},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4},{Type:4}]},LifeTime:600,display:{Name:'[{"text":"Sniper","italic":false,"color":"red"}]',Lore:['[{"text":"-- Crossbow Ammo --","italic":false,"color":"yellow"}]','[{"text":"A firework with an extremely","italic":true,"color":"gray"}]','[{"text":"potent bang and long range.","italic":true,"color":"gray"}]']},HideFlags:127} 4

title @s actionbar {"text":"You have purchased 4 Snipers!","color":"green"}

scoreboard players operation #clearPaper temp = #sniper4 price
function mi:logic/currency/apply_price
