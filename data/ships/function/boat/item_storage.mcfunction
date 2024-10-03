# puts helmet of player onto armor stand with the same score
execute as @e[tag=custom_boat, tag=!fishing_boat, tag=!ice_breaker] on passengers unless items entity @s armor.head #banners if entity @s[type=player, tag =! in_custom_boat] at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s ship_id = @p ship_id run item replace entity @s armor.head from entity @p armor.head

execute as @e[type=boat,tag=custom_boat] on passengers run tag @s add in_custom_boat
execute as @a on vehicle on passengers if entity @s[type=player] run tag @s add riding_boat
tag @a[tag=!riding_boat] remove in_custom_boat
tag @a remove riding_boat


execute as @e[tag=custom_boat, tag=!fishing_boat, tag=!ice_breaker] on passengers if entity @s[type=player] at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s ship_id = @p ship_id run item replace entity @p armor.head from entity @s weapon.mainhand
execute as @e[tag=custom_boat, tag=!scouting_ship, tag=!ice_breaker] on passengers if entity @s[type=armor_stand, tag=mast] at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s ship_id = @n ship_id run item replace entity @n armor.head from entity @s weapon.mainhand

execute as @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] if entity @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:chest_boat"}}}] if items entity @s armor.head #banners at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s ship_id = @p ship_id run item replace entity @p armor.head from entity @s armor.head
execute as @e[type=armor_stand, tag=mast, tag=!scouting_mast] unless score @s ship_id = @s ship_id run item replace entity @s armor.head with air

execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:white_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:orange_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:magenta_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lime_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:pink_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gray_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cyan_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:purple_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blue_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:brown_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:red_banner"}},sort=nearest,limit=1, distance=..1]
execute as @e[tag=custom_boat,tag=!fishing_boat, tag=!ice_breaker] on passengers at @s run kill @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1, distance=..1]