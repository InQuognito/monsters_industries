execute if entity @s[team=team1] if score #team1 enchantment matches 0 if predicate mi:chance_25 run enchant @s punch 2
execute if entity @s[team=team1] if score #team1 enchantment matches 1 if predicate mi:chance_50 run enchant @s punch 2
execute if entity @s[team=team1] if score #team1 enchantment matches 2 if predicate mi:chance_75 run enchant @s punch 2
execute if entity @s[team=team1] if score #team1 enchantment matches 3 run enchant @s punch 2

execute if entity @s[team=team2] if score #team2 enchantment matches 0 if predicate mi:chance_25 run enchant @s punch 2
execute if entity @s[team=team2] if score #team2 enchantment matches 1 if predicate mi:chance_50 run enchant @s punch 2
execute if entity @s[team=team2] if score #team2 enchantment matches 2 if predicate mi:chance_75 run enchant @s punch 2
execute if entity @s[team=team2] if score #team2 enchantment matches 3 run enchant @s punch 2

enchant @s punch 1
