advancement grant @s only ships:advancement/custom_boat/fishing_boat/fishing
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:warm_ocean run loot give @s fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:warm_ocean run loot give @s fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:river run loot give @s fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:deep_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:lukewarm_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:deep_lukewarm_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:cold_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:deep_cold_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:frozen_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~
execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:deep_frozen_ocean run loot give @a fish gameplay/fishing/fish ~ ~ ~

execute as @s on vehicle if entity @s[tag=fishing_boat] on passengers if entity @s[type=player] if biome ~ ~ ~ minecraft:warm_ocean run advancement grant @s only ships:advancement/custom_boat/fishing_boat/coral_reef
advancement revoke @s only ships:miscellaneous/fish_catch_advancement