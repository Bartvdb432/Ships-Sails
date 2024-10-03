scoreboard players enable @a anchor
scoreboard players set #anchor_holder ship_id 0

execute as @a if data entity @s Inventory[{"id":"minecraft:player_head"}]
execute as @a if items entity @s weapon minecraft:player_head[custom_data={anchor_item:1b}] run tag @s add holding_anchor
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:player_head",components:{"minecraft:custom_data":{anchor_item:1b}}}]}] run tag @s add holding_anchor_2
execute as @a[tag=holding_anchor_2] run attribute @s minecraft:generic.movement_speed base set 0.05
execute as @a[tag=!holding_anchor_2] run attribute @s minecraft:generic.movement_speed base set 0.1

execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if entity @e[type=boat,distance=..1,tag=custom_boat] run tag @e[type=boat,limit=1,sort=nearest] add has_anchor
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if entity @e[type=chest_boat,distance=..1,tag=custom_boat] run tag @e[type=chest_boat,limit=1,sort=nearest] add has_anchor

execute as @a[scores={anchor=1..},tag=holding_anchor] at @s unless entity @e[type=boat,distance=..1,tag=custom_boat, scores={anchor_id=1..}] if entity @e[type=boat,tag=custom_boat,distance=..1] run tellraw @s {"text":"Anchor has been used. This ship now belongs to you","color":"yellow","bold":true}
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s unless entity @e[type=boat,distance=..1,tag=custom_boat, scores={anchor_id=1..}] if entity @e[type=boat,tag=custom_boat,distance=..1] run clear @s minecraft:player_head[custom_data={anchor_item:1b}] 1
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if score @s ship_id = @n[type=boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id run tellraw @s {"text":"This ship already belongs to you","bold":true,"color":"yellow"}
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if score @n[type=boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id > #anchor_holder ship_id unless score @s ship_id = @n[type=boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id run tellraw @s {"text":"This ship already belongs to someone else","color":"yellow","bold":true}
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s unless entity @e[distance=..1,tag=custom_boat] run tellraw @s {"text":"Please stand on top of a ship to use an anchor","color":"yellow","bold":true}

execute as @a[scores={anchor=1..},tag=holding_anchor] at @s unless entity @e[type=chest_boat,distance=..1,tag=custom_boat, scores={anchor_id=1..}] if entity @e[type=chest_boat,tag=custom_boat,distance=..1] run tellraw @s {"text":"Anchor has been used. This ship now belongs to you","color":"yellow","bold":true}
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s unless entity @e[type=chest_boat,distance=..1,tag=custom_boat, scores={anchor_id=1..}] if entity @e[type=chest_boat,tag=custom_boat,distance=..1] run clear @s minecraft:player_head[custom_data={anchor_item:1}] 1
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if score @s ship_id = @n[type=chest_boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id run tellraw @s {"text":"This ship already belongs to you","bold":true,"color":"yellow","bold":true}
execute as @a[scores={anchor=1..},tag=holding_anchor] at @s if score @n[type=chest_boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id > #anchor_holder ship_id unless score @s ship_id = @n[type=chest_boat,distance=..1,tag=custom_boat,sort=nearest,limit=1] anchor_id run tellraw @s {"text":"This ship already belongs to someone else","color":"yellow","bold":true}
execute as @a[scores={anchor=1..},tag=!holding_anchor] at @s run tellraw @s {"text":"Please hold an anchor in order to use it","color":"yellow", "bold": true}




execute as @e[type=boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run playsound block.chain.place hostile @a ~ ~ ~ 1000
execute as @e[type=boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run particle block{block_state:{Name:netherite_block}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=boat,tag=has_anchor] unless score @s anchor_id = @s anchor_id run scoreboard players operation @s anchor_id = @p[scores={anchor=1..},tag=holding_anchor] id

execute as @e[type=chest_boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run playsound block.chain.place hostile @a ~ ~ ~ 1000
execute as @e[type=chest_boat,tag=has_anchor] at @s unless score @s anchor_id = @s anchor_id run particle block{block_state:{Name:netherite_block}} ~ ~1 ~ 0 0 0 0 100
execute as @e[type=chest_boat,tag=has_anchor] unless score @s anchor_id = @s anchor_id run scoreboard players operation @s anchor_id = @p[scores={anchor=1..},tag=holding_anchor] id




execute as @e[type=boat,tag=has_anchor] on passengers at @s unless score @s[type=player] ship_id = @e[type=boat,tag=has_anchor,sort=nearest,limit=1] anchor_id run title @s actionbar {"text":"That ship belongs to someone else","color":"yellow"}
execute as @e[type=boat,tag=has_anchor] on passengers at @s unless score @s[type=player] ship_id = @e[type=boat,tag=has_anchor,sort=nearest,limit=1] anchor_id run ride @s dismount

execute as @e[type=chest_boat,tag=has_anchor] on passengers at @s unless score @s[type=player] ship_id = @e[type=chest_boat,tag=has_anchor,sort=nearest,limit=1] anchor_id run title @s actionbar {"text":"That ship belongs to someone else","color":"yellow"}
execute as @e[type=chest_boat,tag=has_anchor] on passengers at @s unless score @s[type=player] ship_id = @e[type=chest_boat,tag=has_anchor,sort=nearest,limit=1] anchor_id run ride @s dismount



scoreboard players set @a anchor 0
tag @a remove holding_anchor
tag @a remove holding_anchor_2
tag @a remove not_holding_anchor