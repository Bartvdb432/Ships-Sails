recipe take @s ships:fishing_boat/acacia_fishing_boat
advancement revoke @s only ships:fishing_boat/acacia_fishing_boat_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/fishing_boat/fishing_boat
give @p acacia_boat[custom_name='{"text":"Acacia Fishing Boat","italic":false}'] 1