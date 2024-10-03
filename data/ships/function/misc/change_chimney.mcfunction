execute as @a on vehicle if entity @s[type=boat,tag=custom_boat,tag=ice_breaker] run tag @s add occupied_boat
execute as @a on vehicle if entity @s[type=chest_boat,tag=custom_boat,tag=ice_breaker] run tag @s add occupied_boat

tag @e[type=boat,tag=!occupied_boat] add empty_boat
tag @e[type=chest_boat,tag=!occupied_boat] add empty_boat

tag @e remove occupied_boat

execute as @e[type=boat,tag=ice_breaker,tag=empty_boat] on passengers unless entity @s[type=player] if entity @s[type=armor_stand,tag=chimney] run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='{"text":"Furnace","color":"gold","underlined":true,"bold":true,"italic":false}',minecraft:lore=['{"text":"Custom Head ID: 24179","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile={id:[I;-1654655835,1990084936,-1611850011,1004962910],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk3MTNlMWNkYzIzZmRhZjM4NDA5NWMzYTNhZDY0YzY3MGQyOGFlOWVlZjkyZDEwZjFlYTA1NWE4NWQ5MGQ0OSJ9fX0="}]}]
execute as @a on vehicle if entity @s[type=boat,tag=ice_breaker] on passengers if entity @s[type=armor_stand,tag=chimney,tag=!chimney_replaced] run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='{"text":"Furnace","color":"gold","underlined":true,"bold":true,"italic":false}',minecraft:lore=['{"text":"Custom Head ID: 24179","color":"gray","italic":false}','{"text":"www.minecraft-heads.com","color":"blue","italic":false}'],profile={id:[I;-942382359,-1970779185,-1767972867,1430474041],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNiZjBiODg1OWExZTU3ZjNhYmQ2MjljMGM3MzZlNjQ0ZTgxNjUxZDRkZTAzNGZlZWE0OWY4ODNmMDBlODJiMCJ9fX0="}]}]

tag @e remove empty_boat
