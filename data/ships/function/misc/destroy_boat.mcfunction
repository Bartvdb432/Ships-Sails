execute as @a on vehicle if entity @s[type=boat,tag=custom_boat] run tag @s add occupied_boat
execute as @a on vehicle if entity @s[type=chest_boat,tag=custom_boat] run tag @s add occupied_boat

tag @e[type=boat,tag=!occupied_boat] add empty_boat
tag @e[type=chest_boat,tag=!occupied_boat] add empty_boat

tag @e remove occupied_boat

execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}] at @s unless score @s ship_id = @s ship_id run tag @s add axe
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}] at @s unless score @s ship_id = @s ship_id run scoreboard players operation @s ship_id = @p ship_id

execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if score @s anchor_id = @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] ship_id on passengers run kill @s[type=armor_stand,tag=mast]
execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if score @s anchor_id = @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] ship_id on passengers run kill @s[type=armor_stand,tag=chimney]
execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if entity @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] unless score @s anchor_id = @s anchor_id on passengers run kill @s[type=armor_stand,tag=mast]
execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if entity @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] unless score @s anchor_id = @s anchor_id on passengers run kill @s[type=armor_stand,tag=chimney]

execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if score @s anchor_id = @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] ship_id run tag @s add killed_boat
execute as @e[type=boat,tag=custom_boat,tag=empty_boat] at @s if entity @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] unless score @s anchor_id = @s anchor_id run tag @s add killed_boat
execute as @e[type=chest_boat,tag=custom_boat,tag=empty_boat] at @s if score @s anchor_id = @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] ship_id run tag @s add killed_boat
execute as @e[type=chest_boat,tag=custom_boat,tag=empty_boat] at @s if entity @e[type=item,tag=axe,limit=1,sort=nearest,distance=..1, scores={ship_id=1..}] unless score @s anchor_id = @s anchor_id run tag @s add killed_boat

execute as @e[type=item,tag=axe] if entity @e[tag=killed_boat,sort=nearest,limit=1] run scoreboard players set @s id 0



execute as @e[type=boat,tag=killed_boat,nbt={Type:acacia}] at @s run particle block{block_state:{Name:acacia_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:bamboo}] at @s run particle block{block_state:{Name:bamboo_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:birch}] at @s run particle block{block_state:{Name:birch_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:cherry}] at @s run particle block{block_state:{Name:cherry_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:"dark_oak"}] at @s run particle block{block_state:{Name:dark_oak_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:"jungle"}] at @s run particle block{block_state:{Name:jungle_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:"mangrove"}] at @s run particle block{block_state:{Name:mangrove_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:"oak"}] at @s run particle block{block_state:{Name:oak_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat,nbt={Type:"spruce"}] at @s run particle block{block_state:{Name:spruce_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=killed_boat] at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1000

execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:acacia}] at @s run particle block{block_state:{Name:acacia_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:bamboo}] at @s run particle block{block_state:{Name:bamboo_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:birch}] at @s run particle block{block_state:{Name:birch_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:cherry}] at @s run particle block{block_state:{Name:cherry_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:"dark_oak"}] at @s run particle block{block_state:{Name:dark_oak_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:"jungle"}] at @s run particle block{block_state:{Name:jungle_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:"mangrove"}] at @s run particle block{block_state:{Name:mangrove_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:"oak"}] at @s run particle block{block_state:{Name:oak_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat,nbt={Type:"spruce"}] at @s run particle block{block_state:{Name:spruce_planks}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=killed_boat] at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1000


kill @e[type=boat,tag=killed_boat]
kill @e[type=chest_boat,tag=killed_boat]

tag @e remove empty_boat