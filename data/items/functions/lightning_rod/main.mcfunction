tag @a[tag=lr.casted] remove lr.casted
execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.lightning_rod:1b}}}] unless score @s lr.cooldown matches 1.. run scoreboard players set @s lr.whitecount 3
execute as @a[scores={lr.whitecount=1..}] at @s run function items:lightning_rod/lightning/start

# Entities getting hit once per lightning
execute unless entity @a[scores={lr.whitecount=1..}] run tag @e[type=#items:lightning_rod.mobs] remove lr.alreadyhitted

# Rclick Cooldown
scoreboard players remove @a[scores={lr.cooldown=1..}] lr.cooldown 1

# Show Cooldown
execute as @a[scores={lr.cooldown=1..},nbt={SelectedItem:{tag:{paveral.lightning_rod:1b}}}] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"score":{"name":"@s","objective":"lr.cooldown"},"color":"dark_red"},{"text":" ]","color":"gold"}]
execute as @a[scores={lr.cooldown=0},nbt={SelectedItem:{tag:{paveral.lightning_rod:1b}}}] at @s run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Ready","color":"dark_red"},{"text":" ]","color":"gold"}]
execute as @a[scores={lr.cooldown=1}] at @s run playsound minecraft:item.trident.return master @s

#phantom
execute as @a[scores={lr.phantom=1..}] run bossbar set minecraft:lr.phantom players @s
execute as @a[scores={lr.phantom=1..}] store result bossbar lr.phantom value run scoreboard players get @s lr.phantom
execute as @a[scores={lr.phantom=1..}] run scoreboard players remove @s lr.phantom 1
execute unless entity @a[scores={lr.phantom=1..}] run bossbar set minecraft:lr.phantom players
execute as @a[scores={lr.phantom=590..}] run scoreboard players set @s lr.paralyze 6000
execute as @a[scores={lr.phantom=590..}] run playsound minecraft:block.conduit.activate master @a[distance=..30]
execute as @a[scores={lr.phantom=590..}] run playsound minecraft:block.conduit.ambient master @a[distance=..30]
execute as @a[scores={lr.phantom=590..}] run scoreboard players reset @s lr.phantom


execute as @a[scores={lr.paralyze=1..}] run scoreboard players remove @s lr.paralyze 1
execute as @a[scores={lr.paralyze=1..}] at @s run particle minecraft:nautilus ~ ~ ~ 0 0 0 1 1
execute if entity @a[scores={lr.paralyze=1..}] as @e[type=minecraft:phantom] at @s if entity @a[scores={lr.paralyze=1..},distance=..10] run function items:lightning_rod/paralyze
