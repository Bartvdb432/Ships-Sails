tag @a remove lightning_sunk 

execute as @e[type=boat] on passengers if entity @s[type=player,tag=!thunder] at @s if entity @e[type=lightning_bolt,distance=..128] if predicate ships:thunder_state run execute store result score @s random_lightning run random value 1..4
execute as @e[type=chest_boat,tag=!custom_boat] on passengers if entity @s[type=player,tag=!thunder] at @s if entity @e[type=lightning_bolt,distance=..128] if predicate ships:thunder_state run execute store result score @s random_lightning run random value 1..4
execute as @e[type=boat,tag=custom_boat] on passengers if entity @s[type=player] at @s if entity @e[type=lightning_bolt,distance=..128] if predicate ships:thunder_state run tag @s add thunder
execute as @a[scores={random_lightning=1}] at @s on vehicle on passengers if entity @s[type=armor_stand,tag=mast] run kill @s
execute as @a[scores={random_lightning=1}] at @s on vehicle on passengers if entity @s[type=armor_stand,tag=chimney] run kill @s
execute as @a[scores={random_lightning=1}] on vehicle if entity @s[type=boat,tag=!custom_boat] run kill @s
execute as @a[scores={random_lightning=1}] on vehicle if entity @s[type=chest_boat,tag=!custom_boat] run kill @s
execute as @a[scores={random_lightning=1}] on vehicle run scoreboard players set @s damage 25
execute as @a[scores={random_lightning=1}] run tag @s add lightning_sunk 
execute as @a[scores={random_lightning=1}] run say hi
scoreboard players reset @a random_lightning
execute as @a[tag=thunder] unless entity @e[type=lightning_bolt,distance=..128] run tag @s remove thunder