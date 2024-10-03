# gives every player that doesn't have one an unique ID, and summons an armor stand with the same ID as the player
execute as @a unless score @s id = @s id run summon armor_stand ~ 56 ~ {Marker:1b,Invulnerable:1b,NoAI:1b,ShowArms:1b,Tags:["storage_armor_stand"],CustomName:"\"Storage Armor Stand\"",CustomNameVisible:1b,HandItems:[{id:"minecraft:white_banner"},{}]}
execute as @a unless score @s id = @s id store result score @s id run scoreboard players add #idHolder id 1
execute as @e[type=armor_stand, tag=storage_armor_stand] unless score @s id = @s id store result score @s id run scoreboard players add #idHolderArmorStand id 1

execute as @e[type=armor_stand,tag=storage_armor_stand] at @s run forceload add ~ ~

# gives boat the score of the player controlling it
scoreboard players reset @e[type=boat] id
execute as @e[type=boat] on passengers as @s[type=player] at @s on vehicle run scoreboard players operation @s id = @p id
scoreboard players reset @e[type=chest_boat] id
execute as @e[type=chest_boat] on passengers as @s[type=player] at @s on vehicle run scoreboard players operation @s id = @p id

scoreboard players reset @e[type=armor_stand, tag=mast] id
execute as @e[type=boat, scores={id=1..}] on passengers as @s[type=player] on vehicle as @s on passengers as @s[type=armor_stand,tag=mast] at @s run scoreboard players operation @s id = @e[type=boat, sort=nearest, limit=1] id

scoreboard players reset @e[type=armor_stand, tag=chimney] id
execute as @e[type=boat, scores={id=1..}] on passengers as @s[type=player] on vehicle as @s on passengers as @s[type=armor_stand,tag=chimney] at @s run scoreboard players operation @s id = @e[type=boat, sort=nearest, limit=1] id