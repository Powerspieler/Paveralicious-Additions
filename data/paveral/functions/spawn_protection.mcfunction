# Detect Join: Add Tag and Join Team (executed once)
execute as @a[scores={leave_detect=1..}] at @s run tag @s add spawn_protection
execute as @a[scores={leave_detect=1..}] at @s run team join spawnp.ff @s

# Resourcepack Message shown after playermove
execute as @a[tag=!spawn_protection,scores={leave_rp.msg=1..},tag=!paveral.rp.seen1_3] at @s run tellraw @s {"translate":"Server Resourcepack has been updated to a newer Version (1.3)!\nDownload it by changing the setting \"Server Resource Packs\" of the server in your serverlist to \"Prompt\"","color":"red","with":[{"text":"Resourcepack loaded. [Hide]","color":"green","clickEvent":{"action":"run_command","value":"/trigger paveral.rp.hide"},"hoverEvent":{"action":"show_text","contents":[{"text":"Hide Message","color":"yellow"}]}}]}
execute as @a[tag=!spawn_protection,scores={leave_rp.msg=1..}] at @s run scoreboard players reset @s leave_rp.msg

# Hide Resourcepack Message
scoreboard players enable @a[scores={leave_detect=1..}] paveral.rp.hide
execute as @a[scores={paveral.rp.hide=1..}] at @s run tag @s add paveral.rp.seen1_3
execute as @a[scores={paveral.rp.hide=1..}] at @s run scoreboard players reset @s paveral.rp.hide



execute as @a[scores={leave_detect=1..}] at @s run scoreboard players reset @s leave_detect

## Repeatly executed for all player with tag
execute as @a[tag=spawn_protection] at @s run effect give @s minecraft:resistance 1 255 true
execute as @a[tag=spawn_protection] at @s run effect give @s minecraft:weakness 1 255 true
execute as @a[tag=spawn_protection] at @s run effect give @s minecraft:mining_fatigue 1 255 true
execute as @a[tag=spawn_protection] at @s run effect give @s minecraft:water_breathing 1 255 true
execute as @a[tag=spawn_protection] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Spawn Protection","color":"dark_red"},{"text":" ]","color":"gold"}]

# Flame Animation
execute as @a[tag=spawn_protection] at @s run scoreboard players add @s spawnp.anim 1
execute as @a[tag=spawn_protection] at @s run function paveral:spawn_protection_animation
execute as @a[tag=spawn_protection] at @s if score @s spawnp.anim matches 40.. run scoreboard players reset @s spawnp.anim
execute as @a[tag=!spawn_protection] at @s run scoreboard players reset @s spawnp.anim

# Hostile Mobs getting Passive
execute as @a[tag=spawn_protection] at @s run team join spawnp.ff @e[type=!player,distance=..5]
execute as @a[tag=!spawn_protection] at @s run team leave @s
execute as @e[type=!player,team=spawnp.ff] at @s unless entity @p[team=spawnp.ff,distance=..6] run team leave @s

# Detect movement and remove tag
execute as @a[tag=spawn_protection] at @s if score @s aviate_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s boat_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s climb_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s crouch_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s fall_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s fly_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s horse_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s minecart_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s pig_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s sprint_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s strider_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s swim_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s walk_owtr_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s walk_detect matches 1.. run tag @s remove spawn_protection
execute as @a[tag=spawn_protection] at @s if score @s walk_uwtr_detect matches 1.. run tag @s remove spawn_protection

execute as @a[scores={aviate_detect=1..}] at @s run scoreboard players reset @s aviate_detect
execute as @a[scores={boat_detect=1..}] at @s run scoreboard players reset @s boat_detect
execute as @a[scores={climb_detect=1..}] at @s run scoreboard players reset @s climb_detect
execute as @a[scores={crouch_detect=1..}] at @s run scoreboard players reset @s crouch_detect
execute as @a[scores={fall_detect=1..}] at @s run scoreboard players reset @s fall_detect
execute as @a[scores={fly_detect=1..}] at @s run scoreboard players reset @s fly_detect
execute as @a[scores={horse_detect=1..}] at @s run scoreboard players reset @s horse_detect
execute as @a[scores={minecart_detect=1..}] at @s run scoreboard players reset @s minecart_detect
execute as @a[scores={pig_detect=1..}] at @s run scoreboard players reset @s pig_detect
execute as @a[scores={sprint_detect=1..}] at @s run scoreboard players reset @s sprint_detect
execute as @a[scores={strider_detect=1..}] at @s run scoreboard players reset @s strider_detect
execute as @a[scores={swim_detect=1..}] at @s run scoreboard players reset @s swim_detect
execute as @a[scores={walk_owtr_detect=1..}] at @s run scoreboard players reset @s walk_owtr_detect
execute as @a[scores={walk_detect=1..}] at @s run scoreboard players reset @s walk_detect
execute as @a[scores={walk_uwtr_detect=1..}] at @s run scoreboard players reset @s walk_uwtr_detect
