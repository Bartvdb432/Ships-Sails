# damage to custom boats
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1,tag=battleship] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run scoreboard players add @s damage 4
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1,tag=fishing_boat] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run scoreboard players add @s damage 12
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1,tag=scouting_ship] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run scoreboard players add @s damage 6
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=chest_boat,distance=..1.5,limit=1,tag=cargo_ship] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run scoreboard players add @s damage 8
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1,tag=ice_breaker] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run scoreboard players add @s damage 6

# sink ship
execute as @e[type=boat,scores={damage=24..},tag=!sunk] at @s on controller run teleport @s ~ ~ ~
execute as @e[type=boat,scores={damage=24..},tag=!sunk] at @s run kill @a[sort=nearest,limit=1,tag=!in_boat,distance=..1,tag=!lightning_sunk]
execute as @e[type=boat,scores={damage=24..},tag=!sunk] at @s run teleport @s ~ ~-1 ~

execute as @e[type=chest_boat,scores={damage=24..},tag=!sunk] at @s on controller run teleport @s ~ ~ ~
execute as @e[type=chest_boat,scores={damage=24..},tag=!sunk] at @s run kill @a[sort=nearest,limit=1,tag=!in_boat,distance=..1,tag=!lightning_sunk]
execute as @e[type=chest_boat,scores={damage=24..}, tag=!sunk] at @s run teleport @s ~ ~-1 ~

execute as @e[type=boat,tag=custom_boat] at @s unless block ~ ~1 ~ #air run tag @s add sunk
execute as @e[type=chest_boat,tag=custom_boat] at @s unless block ~ ~1 ~ #air run tag @s add sunk
execute as @e[type=boat,tag=custom_boat,tag=sunk] on passengers if entity @s[type=armor_stand] run kill @s

execute as @e[type=item,tag=cannonball,tag=!damaged] at @s if entity @e[type=boat,tag=custom_boat,tag=sunk,sort=nearest,limit=1] run scoreboard players operation @e[type=boat,tag=custom_boat,tag=sunk,sort=nearest,limit=1] sunk_id = @s id
execute as @a at @s as @e[type=boat,tag=sunk] if score @s sunk_id = @p id run advancement grant @p only ships:advancement/custom_boat/battleship/sunk


tag @e[type=boat,scores={damage=24..}, tag=!sunk] add sunk
tag @e[type=chest_boat,scores={damage=24..}, tag=!sunk] add sunk
execute as @e[type=boat,scores={damage=24..}, tag=sunk] at @s run tag @e[type=armor_stand,limit=1,sort=nearest] add sunk
execute as @e[type=chest_boat,scores={damage=24..}, tag=sunk] at @s run tag @e[type=armor_stand,limit=1,sort=nearest] add sunk

execute as @e[type=boat,tag=sunk] if block ~ ~1 ~ #air at @s run particle minecraft:dripping_water ~ ~-0.1 ~ 0.35 0 0.35 0 2
execute as @e[type=chest_boat,tag=sunk] if block ~ ~1 ~ #air at @s run particle minecraft:dripping_water ~ ~-0.1 ~ 0.35 0 0.35 0 2

execute as @e[tag=cannonball] at @s run execute as @e[type=!item,tag=!battleship,tag=!fishing_boat,tag=!scouting_ship,tag=!cargo_ship,tag=!ice_breaker,tag=!mast,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run damage @s 10 minecraft:generic
execute as @e[tag=cannonball] at @s run execute as @e[type=boat,tag=,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run kill @s
execute as @e[tag=cannonball] at @s run execute as @e[type=chest_boat,tag=,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run kill @s
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1] run particle explosion ~ ~ ~
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run playsound entity.generic.explode hostile @a ~ ~ ~ 2 1
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=boat,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run tag @e[tag=cannonball,sort=nearest,limit=1,tag=!damaged] add damaged
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=chest_boat,distance=..1.5,limit=1] run particle explosion ~ ~ ~
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=chest_boat,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run tag @e[tag=cannonball,sort=nearest,limit=1,tag=!damaged] add damaged
execute as @e[tag=cannonball,tag=!damaged] at @s run execute as @e[type=chest_boat,distance=..1.5,limit=1] unless score @e[tag=cannonball,tag=!damaged,sort=nearest,limit=1] id = @s id run playsound entity.generic.explode hostile @a ~ ~ ~ 2 1

kill @e[type=item,tag=cannonball,tag=damaged]

# damage visuals
execute at @e[type=boat,scores={damage=3..6},tag=!sunk] run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
execute at @e[type=boat,scores={damage=7..12},tag=!sunk] run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force
execute at @e[type=boat,scores={damage=13..18},tag=!sunk] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force
execute at @e[type=boat,scores={damage=19..25},tag=!sunk] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force
execute at @e[type=boat,scores={damage=19..25},tag=!sunk] run particle minecraft:smoke ~ ~1.5 ~ 0.5 0.5 0.5 0.01 5 force

execute at @e[type=chest_boat,scores={damage=3..6},tag=!sunk] run particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
execute at @e[type=chest_boat,scores={damage=7..12},tag=!sunk] run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force
execute at @e[type=chest_boat,scores={damage=13..18},tag=!sunk] run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 2 force
execute at @e[type=chest_boat,scores={damage=19..25},tag=!sunk] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force
execute at @e[type=chest_boat,scores={damage=19..25},tag=!sunk] run particle minecraft:smoke ~ ~1.5 ~ 0.5 0.5 0.5 0.01 5 force

# explosion upon impactexecute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~ ~-0.01 ~ minecraft:water unless block ~ ~-0.01 ~ minecraft:air run summon tnt

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~ ~0.01 ~ minecraft:water unless block ~ ~0.2 ~ minecraft:air run summon tnt
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~-0.2 ~ ~ minecraft:air unless block ~-0.2 ~ ~ minecraft:water run summon tnt
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~0.2 ~ ~ minecraft:air unless block ~0.2 ~ ~ minecraft:water run summon tnt
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~ ~ ~0.2 minecraft:air unless block ~ ~ ~0.2 minecraft:water run summon tnt
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},tag=cannonball] at @s unless block ~ ~ ~-0.2 minecraft:air unless block ~ ~ ~-0.2 minecraft:water run summon tnt
