recipe take @s ships:scouting_ship/mangrove_scouting_ship
advancement revoke @s only ships:scouting_ship/mangrove_scouting_ship_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/scouting_ship/scouting_ship
give @p mangrove_boat[custom_name='{"text":"Mangrove Scouting Ship","italic":false}'] 1