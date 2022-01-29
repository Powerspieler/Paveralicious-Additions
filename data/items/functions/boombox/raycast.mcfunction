scoreboard players remove @s bobo.range 1
tag @s add bobo.casted

execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_13"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_cat"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_blocks"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_chirp"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_far"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_mall"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_mellohi"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_stal"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_strad"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_ward"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_11"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_wait"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_otherside"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert
execute as @e[dx=0,type=item,nbt={Item:{id:"minecraft:music_disc_pigstep"}}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:boombox/insert



execute if block ^ ^ ^ #items:raycast.passable positioned ^ ^ ^0.1 if score @s bobo.range matches 1.. run function items:boombox/raycast
execute if score @s bobo.range matches 1 run function items:boombox/message
execute unless block ^ ^ ^ #items:raycast.passable if score @s bobo.range matches 2.. run function items:boombox/message
