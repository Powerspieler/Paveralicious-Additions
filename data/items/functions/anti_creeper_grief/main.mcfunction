execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]}] at @s run data merge entity @e[type=creeper,distance=..7,sort=random,limit=1,tag=!acg.no_damage] {ExplosionRadius:0b,Tags:["acg.no_damage"]}
execute as @e[type=creeper,tag=acg.no_damage] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]},distance=..7] run data merge entity @s {ExplosionRadius:3b}
execute as @e[type=creeper,tag=acg.no_damage] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.anti_creeper_grief:1b}}]},distance=..7] run tag @s remove acg.no_damage

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
