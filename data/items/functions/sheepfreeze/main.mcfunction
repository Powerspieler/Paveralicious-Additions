tag @a[tag=sf.casted] remove sf.casted
scoreboard players set @a sf.checkrange 20
execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.sheepfreeze:1b}}}] at @s unless score @s sf.cooldown matches 1.. anchored eyes positioned ^ ^ ^0.5 run function items:sheepfreeze/check_for_entity

execute as @e[tag=sf.victim] at @s run effect give @s invisibility 1 255 true

# Detect Sheeps Death
execute as @e[type=marker,tag=sf.marker] at @s run tp @e[type=sheep,tag=sf.sheep,sort=nearest,limit=1,distance=..1]
execute as @e[type=marker,tag=sf.marker] at @s positioned ~ -96 ~ run tp @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] ~ ~ ~
execute as @e[type=marker,tag=sf.marker] at @s positioned ~ -32 ~ run tp @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] ~ ~ ~
execute as @e[type=marker,tag=sf.marker] at @s unless entity @e[type=sheep,tag=sf.sheep,sort=nearest,limit=1,distance=..1] run function items:sheepfreeze/transform_back_selection

# No Shearing, No Breeding
execute as @e[tag=sf.sheep,nbt={Sheared:1b}] at @s run function items:sheepfreeze/prevent_shearing
execute as @e[tag=sf.sheep] at @s run data merge entity @s {Age:64}

# Player as Sheep
execute as @a[tag=sf.victim,gamemode=spectator] at @s run spectate @e[tag=sf.sheep,sort=nearest,limit=1]
execute as @a[tag=sf.victim,gamemode=spectator] at @s if score @s sf.player_back matches 1.. run scoreboard players remove @s sf.player_back 1
execute as @a[tag=sf.victim,gamemode=spectator] at @s if score @s sf.player_back matches 0 run kill @e[tag=sf.sheep,sort=nearest,limit=1,distance=..1]

# Fix Player leave as sf.victim
execute as @a[tag=sf.victim,scores={leave_detect=1..}] at @s run gamemode survival @s
execute as @a[tag=sf.victim,scores={leave_detect=1..}] at @s run effect clear @s invisibility
execute as @a[tag=sf.victim,scores={leave_detect=1..}] at @s run kill @e[tag=sf.sheep,sort=nearest,limit=1,distance=..1]
execute as @a[tag=sf.victim,scores={leave_detect=1..}] at @s run tag @s remove sf.victim

# Protect Underwater Creatures
execute as @e[tag=sf.victim] at @s run data merge entity @s {Air:300s}

# Prevent Using Portals
execute as @e[tag=sf.sheep,nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:8192}
execute as @e[tag=sf.sheep,nbt={PortalCooldown:20}] run data merge entity @s {PortalCooldown:8192}

# Cooldown
execute as @a[scores={sf.cooldown=1..}] at @s run scoreboard players remove @s sf.cooldown 1
execute as @a[scores={sf.cooldown=1..},nbt={SelectedItem:{tag:{paveral.sheepfreeze:1b}}}] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"sf.cooldown"},"color":"dark_red"},{"text":" ]","color":"gold"}]
execute as @a[scores={sf.cooldown=0},nbt={SelectedItem:{tag:{paveral.sheepfreeze:1b}}}] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Ready","color":"dark_red"},{"text":" ]","color":"gold"}]
execute as @a[scores={sf.cooldown=1}] at @s run playsound minecraft:entity.illusioner.prepare_blindness master @s
