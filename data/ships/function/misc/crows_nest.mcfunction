execute as @a[scores={sneaking=1}] at @s if entity @e[type=boat,tag=scouting_ship,distance=..1] if blocks ~-1 ~ ~-1 ~1 ~30 ~1 ~ ~3 ~ masked run tag @s add crows_nest_requirements
execute as @a[tag=crows_nest_requirements] run tag @e[type=boat,tag=scouting_ship,sort=nearest,limit=1] add crows_nest_boat

execute as @e[type=boat,tag=scouting_ship,tag=crows_nest_boat] on passengers if entity @s[type=armor_stand,tag=scouting_mast] run item replace entity @s armor.head with air
execute as @e[type=boat,tag=scouting_ship,tag=!crows_nest_boat] on passengers if entity @s[type=armor_stand,tag=scouting_mast] run item replace entity @s armor.head with player_head[profile={id:[I;-2110060450,1803371897,-1861919606,1044351832],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdmZDgxMThmMDc4MjhjZjdkOTM5MWM1YTAyMTRhYTI1YWYyNGM5OGU0NTAzZTBiMmZjYzhlZmRkMzE4OWJiMCJ9fX0"}]}]

tag @a[tag=crows_nest_requirements] add crows_nest_requirements_2
tag @a[tag=crows_nest_requirements] add in_crows_nest

execute as @a[tag=crows_nest_requirements] at @s run summon shulker ~ ~19 ~ {Tags:["crows_nest_shulker"]}
execute as @a[tag=crows_nest_requirements] at @s run summon armor_stand ~ ~19 ~ {Tags:["crows_nest_armor_stand"]}
execute as @e[type=armor_stand,tag=crows_nest_armor_stand] at @s run tp @s @e[type=shulker,tag=crows_nest_shulker,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=crows_nest_armor_stand] at @s rotated as @p run teleport @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=crows_nest_armor_stand] at @s run tp @s ~ ~0.15 ~
execute as @a[tag=crows_nest_requirements] at @s run tp @s @e[type=armor_stand,tag=crows_nest_armor_stand,sort=nearest,limit=1]

advancement grant @a[tag=crows_nest_requirements] only ships:advancement/custom_boat/scouting_ship/crows_nest

tp @e[type=shulker,tag=crows_nest_shulker] ~ -500 ~
kill @e[type=shulker,tag=crows_nest_shulker]
tp @e[type=armor_stand,tag=crows_nest_armor_stand] ~ -500 ~
kill @e[type=armor_stand,tag=crows_nest_armor_stand]
execute as @a[tag=crows_nest_requirements] run attribute @s minecraft:generic.jump_strength modifier add 8c467e75-4eac-48c9-b478-151a443a13da -1000 add_multiplied_total

execute as @a[tag=in_crows_nest] at @s run setblock ~ ~ ~ composter
execute as @a[tag=in_crows_nest] run kill @e[type=item,nbt={Item:{id:"minecraft:wooden_axe"}},sort=nearest,limit=1]

execute as @a[tag=crows_nest_requirements_2,scores={sneaking=0}] run attribute @s minecraft:generic.jump_strength modifier remove 8c467e75-4eac-48c9-b478-151a443a13da

execute as @a[tag=crows_nest_requirements_2,scores={sneaking=0}] run tag @s remove in_crows_nest

execute as @a[tag=crows_nest_requirements_2,scores={sneaking=0}] at @s run setblock ~ ~ ~ air
execute as @a[tag=crows_nest_requirements_2,scores={sneaking=0}] at @s run tp @s ~ ~-18.5 ~

execute as @a[tag=crows_nest_requirements_2,scores={sneaking=0}] at @s run tag @e[type=boat,tag=scouting_ship,tag=crows_nest_boat,sort=nearest,limit=1] remove crows_nest_boat

execute as @a[tag=crows_nest_requirements_2] at @s if entity @e[type=boat,tag=scouting_ship,distance=..2] run tag @s remove crows_nest_requirements_2
tag @a[tag=crows_nest_requirements] remove crows_nest_requirements
scoreboard players set @a sneaking 0

execute as @e[type=boat,tag=scouting_ship,tag=crows_nest_boat] on passengers if entity @s[type=player] run ride @s dismount