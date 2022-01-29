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








