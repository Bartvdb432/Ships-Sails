# plays sound
execute as @a[scores={fired_cannonball=1}] at @s run playsound minecraft:entity.firework_rocket.large_blast hostile @s ~ ~ ~ 1000 1.0 1.0

# particles
execute as @s run particle minecraft:flame ~ ~-.5 ~ 0.5 0.5 0.5 0.3 50 force
execute as @s run particle minecraft:smoke ~ ~-.5 ~ 0.1 0.1 0.1 0.01 50 force

# stores first position
execute store result score @s cannonball_motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s cannonball_motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s cannonball_motion_z1 run data get entity @s Pos[2] 1000

# teleports item in direction the player is looking
tp @s ^ ^ ^0.10

# stores second position after teleporting item
execute store result score @s cannonball_motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s cannonball_motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s cannonball_motion_z2 run data get entity @s Pos[2] 1000

# calculates difference between two coordinates
scoreboard players operation @s cannonball_motion_x2 -= @s cannonball_motion_x1
scoreboard players operation @s cannonball_motion_y2 -= @s cannonball_motion_y1
scoreboard players operation @s cannonball_motion_z2 -= @s cannonball_motion_z1

# Increase the multiplier for further distance. In this example, 0.005 is increased to 0.02 for more distance.
execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s cannonball_motion_x2
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s cannonball_motion_y2
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s cannonball_motion_z2


tag @s add motion_added
