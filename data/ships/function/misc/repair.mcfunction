execute as @a on vehicle if entity @s[type=boat,tag=custom_boat,tag=ice_breaker] run tag @s add occupied_boat
execute as @a on vehicle if entity @s[type=chest_boat,tag=custom_boat,tag=ice_breaker] run tag @s add occupied_boat

tag @e[type=boat,tag=!occupied_boat] add empty_boat
tag @e[type=chest_boat,tag=!occupied_boat] add empty_boat

tag @e remove occupied_boat

execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:bamboo_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:birch_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:cherry_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:mangrove_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_planks"}},distance=..1] run tag @s add repaired

execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:bamboo_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:birch_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:cherry_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:mangrove_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}},distance=..1] run tag @s add repaired
execute as @e[type=chest_boat,tag=custom_boat,scores={damage=1..},tag=empty_boat] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_planks"}},distance=..1] run tag @s add repaired


execute as @e[type=boat,tag=custom_boat,tag=repaired] run scoreboard players remove @s damage 4
scoreboard players set @e[type=boat,tag=custom_boat,tag=repaired,scores={damage=..0}] damage 0
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run playsound block.smithing_table.use hostile @a ~ ~ ~ 1000
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 1000

execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:acacia_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bamboo_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:birch_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cherry_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:jungle_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:mangrove_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_planks"}},distance=..1,sort=nearest,limit=1]

execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:acacia_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bamboo_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:birch_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cherry_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:jungle_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:mangrove_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}},distance=..1,sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=custom_boat,tag=repaired] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_planks"}},distance=..1,sort=nearest,limit=1]

tag @e[type=boat,tag=custom_boat] remove repaired
tag @e[type=chest_boat,tag=custom_boat] remove repaired