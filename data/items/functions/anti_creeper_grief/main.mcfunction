execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]}] at @s run data merge entity @e[type=creeper,distance=..8,sort=random,limit=1,tag=!acg.no_damage] {ExplosionRadius:0b,Tags:["acg.no_damage"]}
execute as @e[type=creeper,tag=acg.no_damage] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]},distance=..8] unless entity @e[tag=acg.hide,distance=..50] run data merge entity @s {ExplosionRadius:3b}
execute as @e[type=creeper,tag=acg.no_damage] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]},distance=..8] unless entity @e[tag=acg.hide,distance=..50] run tag @s remove acg.no_damage

execute as @e[type=creeper,tag=acg.no_damage] at @s run effect give @s luck 2 255 true
execute as @e[type=creeper,tag=!acg.no_damage] at @s run effect clear @s luck

execute as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:26b}]}] at @s run function items:anti_creeper_grief/create_confetti

# Hide Itemframes with Item in it
execute as @e[type=item_frame,nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run data merge entity @s {Invisible:1b,Tags:["acg.hide"]}
execute as @e[type=item_frame,tag=acg.hide] unless entity @s[nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run data merge entity @s {Invisible:0b}
execute as @e[type=item_frame,tag=acg.hide] unless entity @s[nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run tag @s remove acg.hide

execute as @e[type=glow_item_frame,nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run data merge entity @s {Invisible:1b,Tags:["acg.hide"]}
execute as @e[type=glow_item_frame,tag=acg.hide] unless entity @s[nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run data merge entity @s {Invisible:0b}
execute as @e[type=glow_item_frame,tag=acg.hide] unless entity @s[nbt={Item:{tag:{paveral.anti_creeper_grief:1b}}}] run tag @s remove acg.hide

# Item in Itemframe
execute as @e[tag=acg.hide] at @s run data merge entity @e[type=creeper,distance=..50,sort=random,limit=1,tag=!acg.no_damage] {ExplosionRadius:0b,Tags:["acg.no_damage"]}

# Range Message
execute as @a[nbt={SelectedItem:{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}}] at @s if entity @e[tag=acg.hide,distance=..50] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Save","color":"green"},{"text":" ]","color":"gold"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}}] at @s unless entity @e[tag=acg.hide,distance=..50] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Unsave","color":"dark_red"},{"text":" ]","color":"gold"}]
