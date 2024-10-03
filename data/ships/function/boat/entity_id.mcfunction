# gives every player that doesn't have one an unique ID, and summons an armor stand with the same ID as the player
execute as @a unless score @s ship_id = @s ship_id run summon armor_stand ~ -64 ~ {Marker:1b,Invulnerable:1b,NoAI:1b,ShowArms:1b,Tags:["storage_armor_stand"],CustomName:"\"Storage Armor Stand\"",CustomNameVisible:1b,HandItems:[{id:"minecraft:white_banner"},{}]}
execute as @a unless score @s ship_id = @s ship_id store result score @s ship_id run scoreboard players add #idHolder ship_id 1
execute as @e[type=armor_stand, tag=storage_armor_stand] unless score @s ship_id = @s ship_id store result score @s ship_id run scoreboard players add #idHolderArmorStand ship_id 1

execute as @e[type=armor_stand,tag=storage_armor_stand] at @s run forceload add ~ ~

# gives boat the score of the player controlling it
scoreboard players reset @e[type=boat] ship_id
execute as @e[type=boat] on passengers as @s[type=player] at @s on vehicle run scoreboard players operation @s ship_id = @p ship_id
scoreboard players reset @e[type=chest_boat] ship_id
execute as @e[type=chest_boat] on passengers as @s[type=player] at @s on vehicle run scoreboard players operation @s ship_id = @p ship_id

scoreboard players reset @e[type=armor_stand, tag=mast] ship_id
execute as @e[type=boat, scores={ship_id=1..}] on passengers as @s[type=player] on vehicle as @s on passengers as @s[type=armor_stand,tag=mast] at @s run scoreboard players operation @s ship_id = @e[type=boat, sort=nearest, limit=1] ship_id

scoreboard players reset @e[type=armor_stand, tag=chimney] ship_id
execute as @e[type=boat, scores={ship_id=1..}] on passengers as @s[type=player] on vehicle as @s on passengers as @s[type=armor_stand,tag=chimney] at @s run scoreboard players operation @s ship_id = @e[type=boat, sort=nearest, limit=1] ship_id