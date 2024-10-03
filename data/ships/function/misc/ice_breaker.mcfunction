execute as @e[type=boat,tag=ice_breaker] at @s if block ^ ^ ^0.7 ice run tag @s add breaking_ice
execute as @e[type=boat,tag=ice_breaker] at @s if block ^ ^ ^0.7 packed_ice run tag @s add breaking_packed_ice
execute as @e[type=boat,tag=ice_breaker] at @s if block ^ ^ ^0.7 blue_ice run tag @s add breaking_blue_ice

execute as @e[type=boat,tag=ice_breaker,tag=breaking_ice] at @s run fill ^1 ^ ^1 ^-1 ^ ^1 water replace ice
execute as @e[type=boat,tag=ice_breaker,tag=breaking_packed_ice] at @s run fill ^1 ^ ^1 ^-1 ^ ^1 water replace packed_ice
execute as @e[type=boat,tag=ice_breaker,tag=breaking_blue_ice] at @s run fill ^1 ^ ^1 ^-1 ^ ^1 water replace blue_ice

execute as @e[type=boat,tag=ice_breaker,tag=breaking_ice] at @s run particle block{block_state:{Name:ice}} ^ ^0.5 ^1 0.5 0 0.5 1 100
execute as @e[type=boat,tag=ice_breaker,tag=breaking_packed_ice] at @s run particle block{block_state:{Name:packed_ice}} ^ ^0.5 ^1 0.5 0 0.5 1 100
execute as @e[type=boat,tag=ice_breaker,tag=breaking_blue_ice] at @s run particle block{block_state:{Name:blue_ice}} ^ ^0.5 ^1 0.5 0 0.5 1 100

execute at @e[type=boat,tag=ice_breaker,tag=breaking_ice] run playsound minecraft:block.glass.break hostile @a ^ ^ ^1 1 1 1
execute at @e[type=boat,tag=ice_breaker,tag=breaking_packed_ice] run playsound minecraft:block.glass.break hostile @a ^ ^ ^1 1 1 1
execute at @e[type=boat,tag=ice_breaker,tag=breaking_blue_ice] run playsound minecraft:block.glass.break hostile @a ^ ^ ^1 1 1 1

execute as @e[type=boat,tag=ice_breaker,tag=breaking_ice] on controller run advancement grant @s only ships:advancement/custom_boat/ice_breaker/breaking_ice
execute as @e[type=boat,tag=ice_breaker,tag=breaking_packed_ice] on controller run advancement grant @s only ships:advancement/custom_boat/ice_breaker/breaking_ice
execute as @e[type=boat,tag=ice_breaker,tag=breaking_blue_ice] on controller run advancement grant @s only ships:advancement/custom_boat/ice_breaker/breaking_ice


tag @e remove breaking_ice
tag @e remove breaking_packed_ice
tag @e remove breaking_blue_ice