recipe take @s ships:fishing_boat/birch_fishing_boat
advancement revoke @s only ships:fishing_boat/birch_fishing_boat_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/fishing_boat/fishing_boat
give @p birch_boat[custom_name='{"text":"Birch Fishing Boat","italic":false}'] 1