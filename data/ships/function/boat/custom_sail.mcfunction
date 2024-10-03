# enables sail trigger
scoreboard players enable @a sail

# gives player the holding_banner tag when holding a banner
execute as @a store success score @s holding_banner if items entity @s weapon.* #minecraft:banners run tag @s add holding_banner

# replaces the banner in the armor stands main hand
execute as @a[scores={sail=1},tag=holding_banner] at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s id = @p id run item replace entity @s weapon.mainhand from entity @p weapon.mainhand
execute as @e[type=armor_stand,tag=storage_armor_stand] run item modify entity @s weapon.mainhand ships:sail_item
execute as @a[scores={sail=1},tag=holding_banner] at @s as @e[type=armor_stand,tag=storage_armor_stand] if score @s id = @p id run advancement grant @p only ships:advancement/custom_sail/custom_sail

# feedback messages
tellraw @a[scores={sail=1},tag=holding_banner] {"text":"Custom sail has been set","color":"yellow", "bold": true}
tellraw @a[scores={sail=1},tag=!holding_banner] {"text":"Please hold a banner in your mainhand to set a custom sail","color":"yellow", "bold": true}

# resets scores and tags for future use
tag @a remove holding_banner

# removes tags
tag @a[scores={sail=0}] remove banner_replaced_2

# replaces helmet with banner
execute as @e[type=armor_stand,tag=storage_armor_stand] at @s as @a[scores={sail=1},tag=in_boat,tag=!banner_replaced_2,tag=!in_fishing_boat,tag=!in_normal_boat] if score @s id = @a[scores={sail=1},tag=in_boat,tag=!banner_replaced_2,tag=!in_fishing_boat,tag=!in_normal_boat,limit=1] id run item replace entity @s armor.head from entity @n weapon.mainhand
tag @a[scores={sail=1},tag=in_boat,tag=!banner_replaced_2,tag=!in_fishing_boat,tag=!in_normal_boat] add banner_replaced_2

scoreboard players set @a sail 0