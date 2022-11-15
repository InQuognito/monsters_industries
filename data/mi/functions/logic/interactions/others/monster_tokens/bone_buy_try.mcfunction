function mi:logic/convert_currency_scoreboards
function mi:logic/currency/reset_temp_prices

execute unless score #temp ct.paper >= #monsterTokenPaper price run title @s actionbar {"text":"You do not have enough paper to purchase a monster token!","color":"red"}
execute unless score #temp ct.bone >= #monsterTokenBone price run title @s actionbar {"text":"You do not have enough bones to purchase a monster token!","color":"red"}

execute if score #temp ct.paper >= #monsterTokenPaper price if score #temp ct.bone >= #monsterTokenBone price run function mi:logic/interactions/others/monster_tokens/bone_buy
