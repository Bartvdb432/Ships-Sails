execute as @e[type=boat,tag=battleship] store result entity @e[type=armor_stand,tag=mast,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[type=boat,tag=fishing_boat] store result entity @e[type=armor_stand,tag=mast,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[type=boat,tag=scouting_ship] store result entity @e[type=armor_stand,tag=mast,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[type=boat,tag=ice_breaker] store result entity @e[type=armor_stand,tag=chimney,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[type=minecraft:armor_stand,tag=mast] at @s rotated as @e[type=boat,sort=nearest,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=chimney] at @s rotated as @e[type=boat,sort=nearest,limit=1] run teleport @s ~ ~ ~ ~ ~