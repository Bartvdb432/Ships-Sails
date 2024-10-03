# stop eating sound
execute as @a[nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{cannonball_item:1b}}}}] run stopsound @s player entity.generic.eat



# summons cannonball when player fired cannonball
execute as @e[type=boat,tag=battleship] on passengers as @s at @s if entity @s[scores={fired_cannonball=1..,cannonball_cooldown=0}] run summon minecraft:item ~ ~1 ~ {Tags:["cannonball"],PickupDelay:210,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-639877664,1727545686,-2004029853,-632720288],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1MjNlMTVlOTk4NjM1NWExZjg1MWY0M2Y3NTBlZTNmMjNjODlhZTEyMzYzMWRhMjQxZjg3MmJhN2E3ODEifX19"}]}}}}

# give ID of player to cannonball
execute as @e[type=item,tag=cannonball,tag=!id_cannonball] run scoreboard players operation @s id = @a[scores={fired_cannonball=1}] id
tag @e[type=item,tag=cannonball] add id_cannonball

# kills cannonballs after short time
kill @e[type=item,tag=cannonball,nbt={Item:{id:"minecraft:player_head"},Age:80s}]

# gives cannonball motion
execute as @e[tag=cannonball,tag=!motion_added] at @s rotated as @a[scores={fired_cannonball=1,cannonball_cooldown=0}, sort=nearest, limit=1] run function ships:cannonball/cannonball_2

execute as @e[type=boat,tag=battleship] on passengers if entity @s[scores={fired_cannonball=1,cannonball_cooldown=..0}] run scoreboard players set @s cannonball_cooldown 26

advancement grant @a[scores={fired_cannonball=1..}] only ships:advancement/custom_boat/battleship/firing

scoreboard players set @a fired_cannonball 0