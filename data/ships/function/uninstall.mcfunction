kill @e[type=armor_stand,tag=storage_armor_stand]
kill @e[type=armor_stand,tag=mast]
kill @e[type=armor_stand,tag=chimney]
kill @e[type=boat,tag=sunk]
kill @e[type=chest_boat,tag=sunk]
data merge entity @e[type=minecraft:boat,sort=nearest,limit=1] {Invulnerable:0b}
tag @e remove custom_boat
tag @e remove battleship
tag @e remove scouting_ship
tag @e remove cargo_ship
tag @e remove fishing_boat
tag @e remove ice_breaker
tag @e remove normal_boat

scoreboard objectives remove ship_id
scoreboard objectives remove anchor_id
scoreboard objectives remove sail
scoreboard objectives remove holding_banner
scoreboard objectives remove fired_cannonball
scoreboard objectives remove cannonball_cooldown
scoreboard objectives remove cannonball_motion_x1
scoreboard objectives remove cannonball_motion_y1
scoreboard objectives remove cannonball_motion_z1
scoreboard objectives remove cannonball_motion_x2
scoreboard objectives remove cannonball_motion_y2
scoreboard objectives remove cannonball_motion_z2
scoreboard objectives remove sunk_id
scoreboard objectives remove damage
scoreboard objectives remove anchor
scoreboard objectives remove anchor_score
scoreboard objectives remove random_number
scoreboard objectives remove sneaking
scoreboard objectives remove crows_nest_id
scoreboard objectives remove random_lightning

scoreboard objectives remove cannonball_cooldown