execute as @e[type=boat,tag=leashed] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=leashed] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},sort=nearest,limit=1]
execute as @e[type=boat,tag=leashed] at @s run tp @s ~ ~-11 ~
execute as @e[type=chest_boat,tag=leashed] at @s run tp @s ~ ~-11 ~
tag @e[type=boat] remove leashed
tag @e[type=chest_boat] remove leashed
execute as @e[type=boat,tag=custom_boat,tag=crows_nest_boat] at @s on leasher run tag @n add leashed
execute as @e[type=boat,tag=custom_boat] if score @s anchor_id = @s anchor_id at @s on leasher unless score @s id = @n anchor_id run tag @n add leashed
execute as @e[type=chest_boat,tag=custom_boat] at @s on leasher if score @s anchor_id = @s anchor_id unless score @s id = @n anchor_id run tag @n add leashed
execute as @e[type=boat,tag=leashed] on leasher run give @s lead 1
execute as @e[type=chest_boat,tag=leashed] on leasher run give @s lead 1
execute as @e[type=boat,tag=leashed] at @s run tp @s ~ ~11 ~
execute as @e[type=chest_boat,tag=leashed] at @s run tp @s ~ ~11 ~
execute as @e[type=boat,tag=leashed] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},sort=nearest,limit=1]
execute as @e[type=chest_boat,tag=leashed] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},sort=nearest,limit=1]