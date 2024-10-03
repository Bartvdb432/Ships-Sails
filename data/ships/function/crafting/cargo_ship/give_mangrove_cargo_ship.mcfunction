recipe take @s ships:cargo_ship/mangrove_cargo_ship
advancement revoke @s only ships:cargo_ship/mangrove_cargo_ship_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/cargo_ship/cargo_ship
give @p mangrove_chest_boat[custom_name='{"text":"Mangrove Cargo Ship","italic":false}'] 1