execute as @e[type=minecraft:glow_item_frame,tag=paveral.chunkloader,tag=!placed] at @s run function items:chunkloader/place
execute as @e[type=minecraft:glow_item_frame,tag=paveral.chunkloader,tag=placed] at @s unless block ~ ~ ~ petrified_oak_slab run function items:chunkloader/remove
execute as @e[type=minecraft:glow_item_frame,tag=paveral.chunkloader,tag=placed] at @s unless entity @s[nbt={Facing:1b}] run function items:chunkloader/force_remove

# Actionbar Message
execute as @a[nbt={SelectedItem:{tag:{paveral.chunkloader:1b}}}] at @s store success score @s cl.check run forceload query ~ ~
execute as @a[nbt={SelectedItem:{tag:{paveral.chunkloader:1b}}}] if score @s cl.check matches 1 run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Chunk Loaded","color":"green"},{"text":" ]","color":"gold"},{"text":" - ","color":"gray"},{"text":"Total: ","color":"blue"},{"storage":"minecraft:paveral","nbt":"cl_total","color":"yellow"}]
execute as @a[nbt={SelectedItem:{tag:{paveral.chunkloader:1b}}}] if score @s cl.check matches 0 run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Chunk Not Loaded","color":"red"},{"text":" ]","color":"gold"},{"text":" - ","color":"gray"},{"text":"Total: ","color":"blue"},{"storage":"minecraft:paveral","nbt":"cl_total","color":"yellow"}]

execute as @a[nbt={SelectedItem:{tag:{paveral.chunkloader:1b}}},limit=1] store result storage minecraft:paveral cl_total int 1 run forceload query
