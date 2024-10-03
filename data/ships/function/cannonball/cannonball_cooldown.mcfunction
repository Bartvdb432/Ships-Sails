execute as @a[scores={cannonball_cooldown=1..},nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{cannonball_item:1b}}}}] run item modify entity @s weapon.mainhand ships:cannonball_non_food
execute as @e[type=boat,tag=battleship] on passengers if entity @s[scores={cannonball_cooldown=..0},nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{cannonball_item:1b}}}}] run item modify entity @s weapon.mainhand ships:cannonball_food

execute as @a[scores={cannonball_cooldown=1..}] run scoreboard players remove @s cannonball_cooldown 1
scoreboard players reset @e[type=!player] cannonball_cooldown


tag @a[scores={cannonball_cooldown=1..}] remove cannonball_cooldown_2

execute as @a[scores={cannonball_cooldown=22..26}] run title @s actionbar {"text":"\u25a0\u25a0\u25a0\u25a0\u25a0","color":"red"}
execute as @a[scores={cannonball_cooldown=17..21}] run title @s actionbar ["",{"text":"\u25a0","color":"green"},{"text":"\u25a0\u25a0\u25a0\u25a0","color":"red"}]
execute as @a[scores={cannonball_cooldown=12..16}] run title @s actionbar ["",{"text":"\u25a0\u25a0","color":"green"},{"text":"\u25a0\u25a0\u25a0","color":"red"}]
execute as @a[scores={cannonball_cooldown=7..11}] run title @s actionbar ["",{"text":"\u25a0\u25a0\u25a0","color":"green"},{"text":"\u25a0\u25a0","color":"red"}]
execute as @a[scores={cannonball_cooldown=2..6}] run title @s actionbar ["",{"text":"\u25a0\u25a0\u25a0\u25a0","color":"green"},{"text":"\u25a0","color":"red"}]
execute as @a[scores={cannonball_cooldown=1}] run title @s actionbar {"text":"\u25a0\u25a0\u25a0\u25a0\u25a0","color":"green"}
execute as @a[scores={cannonball_cooldown=0},tag=!cannonball_cooldown_2] run title @s actionbar {"text":""}

tag @a[scores={cannonball_cooldown=0}] add cannonball_cooldown_2