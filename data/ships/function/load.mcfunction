# welcome message
tellraw @a ["Thanks for installing ",{"text":"Ships","bold":true,"color":"#b89b68"},{"text":"&","bold":true},{"text":"Sails","bold":true,"color":"#479bf3"}, "\n- Bartvdb432"]


# scoreboards
scoreboard objectives add id dummy "ID"
scoreboard objectives add anchor_id dummy "Anchor ID"

scoreboard objectives add sail trigger "Sail"
scoreboard players enable @a sail
scoreboard players set @a sail 0
scoreboard objectives add holding_banner dummy "Holding Banner"

scoreboard objectives add fired_cannonball minecraft.used:minecraft.player_head "Fired Cannonball"
scoreboard objectives add cannonball_cooldown dummy "Cannonball Cooldown"

scoreboard players set @a cannonball_cooldown 1
scoreboard objectives add cannonball_motion_x1 dummy
scoreboard objectives add cannonball_motion_y1 dummy
scoreboard objectives add cannonball_motion_z1 dummy
scoreboard objectives add cannonball_motion_x2 dummy
scoreboard objectives add cannonball_motion_y2 dummy
scoreboard objectives add cannonball_motion_z2 dummy

scoreboard objectives add sunk_id trigger "Sunk ID"

scoreboard objectives add damage dummy "Damage"

scoreboard objectives add anchor trigger "Anchor"
scoreboard players enable @a anchor
scoreboard players set @a anchor 0

scoreboard objectives add anchor_score dummy "Anchor Score"

scoreboard objectives add random_number dummy "Random Number"

scoreboard objectives add sneaking minecraft.custom:sneak_time "Sneaking"

scoreboard objectives add crows_nest_id dummy "Crows Nest ID"

scoreboard objectives add random_lightning dummy "Random Lightning"