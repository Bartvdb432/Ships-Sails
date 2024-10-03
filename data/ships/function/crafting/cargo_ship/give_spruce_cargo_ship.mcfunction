recipe take @s ships:cargo_ship/spruce_cargo_ship
advancement revoke @s only ships:cargo_ship/spruce_cargo_ship_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/cargo_ship/cargo_ship
give @p spruce_chest_boat[custom_name='{"text":"Spruce Cargo Ship","italic":false}'] 1