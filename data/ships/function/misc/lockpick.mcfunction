execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}},tag=!wooden_pickaxe_random_number] run execute store result score @s random_number run random value 1..20
tag @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}},tag=!wooden_pickaxe_random_number] add wooden_pickaxe_random_number

execute as @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}},tag=!stone_pickaxe_random_number] run execute store result score @s random_number run random value 1..15
tag @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}},tag=!stone_pickaxe_random_number] add stone_pickaxe_random_number

execute as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}},tag=!golden_pickaxe_random_number] run execute store result score @s random_number run random value 1..10
tag @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}},tag=!golden_pickaxe_random_number] add golden_pickaxe_random_number

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},tag=!iron_pickaxe_random_number] run execute store result score @s random_number run random value 1..7
tag @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},tag=!iron_pickaxe_random_number] add iron_pickaxe_random_number

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},tag=!diamond_pickaxe_random_number] run execute store result score @s random_number run random value 1..3
tag @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},tag=!diamond_pickaxe_random_number] add diamond_pickaxe_random_number

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}},tag=!netherite_pickaxe_random_number] run scoreboard players set @s random_number 1
tag @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}},tag=!netherite_pickaxe_random_number] add netherite_pickaxe_random_number

tag @e[type=item,tag=wooden_pickaxe_random_number] add random_lockpick
tag @e[type=item,tag=stone_pickaxe_random_number] add random_lockpick
tag @e[type=item,tag=gold_pickaxe_random_number] add random_lockpick
tag @e[type=item,tag=iron_pickaxe_random_number] add random_lockpick
tag @e[type=item,tag=diamond_pickaxe_random_number] add random_lockpick
tag @e[type=item,tag=netherite_pickaxe_random_number] add random_lockpick

execute as @e[type=boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run playsound entity.item.break hostile @a ~ ~ ~ 1000
execute as @e[type=boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run particle infested ~ ~1 ~ 0.2 0 0.2 0 10
execute as @e[type=boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run kill @e[type=item,sort=nearest,tag=random_lockpick,limit=1]

execute as @e[type=chest_boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run playsound entity.item.break hostile @a ~ ~ ~ 1000
execute as @e[type=chest_boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run particle infested ~ ~1 ~ 0.2 0 0.2 0 10
execute as @e[type=chest_boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=2..},distance=..1] run kill @e[type=item,sort=nearest,tag=random_lockpick,limit=1]


execute as @e[type=boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=1},distance=..1] run scoreboard players reset @s anchor_id
execute as @e[type=boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=1},distance=..1] run kill @e[type=item,sort=nearest,tag=random_lockpick,limit=1]
execute as @e[type=boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run playsound block.chain.break hostile @a ~ ~ ~ 1000
execute as @e[type=boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run particle block{block_state:{Name:netherite_block}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run tag @s remove has_anchor

execute as @e[type=chest_boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=1},distance=..1] run scoreboard players reset @s anchor_id
execute as @e[type=chest_boat,tag=has_anchor] at @s if entity @e[type=item,scores={random_number=1},distance=..1] run kill @e[type=item,sort=nearest,tag=random_lockpick,limit=1]
execute as @e[type=chest_boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run playsound block.chain.break hostile @a ~ ~ ~ 1000
execute as @e[type=chest_boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run particle block{block_state:{Name:netherite_block}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run tag @s remove has_anchor