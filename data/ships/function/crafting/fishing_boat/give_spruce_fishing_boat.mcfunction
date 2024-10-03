recipe take @s ships:fishing_boat/spruce_fishing_boat
advancement revoke @s only ships:fishing_boat/spruce_fishing_boat_advancement
clear @s minecraft:knowledge_book
advancement grant @s only ships:advancement/custom_boat/custom_boat
advancement grant @s only ships:advancement/custom_boat/fishing_boat/fishing_boat
give @p spruce_boat[custom_name='{"text":"Spruce Fishing Boat","italic":false}'] 1