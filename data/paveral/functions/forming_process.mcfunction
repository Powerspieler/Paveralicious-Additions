execute unless score @s FormingAnimation matches 0..130 run bossbar add forming {"text":"Forming...","color":"dark_purple"}
execute unless score @s FormingAnimation matches 0..130 run bossbar set minecraft:forming color purple
execute unless score @s FormingAnimation matches 0..130 run bossbar set minecraft:forming max 120
execute unless score @s FormingAnimation matches 0..130 run bossbar set minecraft:forming players @a[distance=..30]
execute unless score @s FormingAnimation matches 0..130 run data merge entity @s {Motion:[0.0,0.0,0.0],NoGravity:1b,PickupDelay:32767,Age:-32768,Tags:["forming","forming_base"]}

scoreboard players add @s FormingAnimation 1
execute store result bossbar minecraft:forming value run scoreboard players get @s FormingAnimation

execute if score @s FormingAnimation matches 1 run playsound minecraft:entity.wither.spawn master @a[distance=..40] ~ ~ ~ 1 0.75
execute if score @s FormingAnimation matches 1 run scoreboard players reset @s AltarValid
execute if score @s FormingAnimation matches 1 run advancement grant @a[distance=..5] only paveral:first_forming
execute if score @s FormingAnimation matches 1 run execute as @e[type=item,tag=forming,distance=..4] at @s run particle minecraft:enchant ~ ~ ~ 0 0 0 0.3 100

execute if score @s FormingAnimation matches 60.. run particle minecraft:glow ~2 ~1 ~2 0 1 0 0 10
execute if score @s FormingAnimation matches 60.. run particle minecraft:glow ~-2 ~1 ~-2 0 1 0 0 10
execute if score @s FormingAnimation matches 60.. run particle minecraft:glow ~-2 ~1 ~2 0 1 0 0 10
execute if score @s FormingAnimation matches 60.. run particle minecraft:glow ~2 ~1 ~-2 0 1 0 0 10
execute if score @s FormingAnimation matches 60..80 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.50
execute if score @s FormingAnimation matches 80..95 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.55
execute if score @s FormingAnimation matches 95..105 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.65
execute if score @s FormingAnimation matches 105..110 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.8
execute if score @s FormingAnimation matches 110.. run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 2.0

execute if score @s FormingAnimation matches 120.. run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 25
execute if score @s FormingAnimation matches 120.. run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.3 256
execute if score @s FormingAnimation matches 120.. run playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..40]
execute if score @s FormingAnimation matches 120.. run playsound minecraft:block.beacon.activate master @a[distance=..40] ~ ~ ~ 1 0.75
execute if score @s FormingAnimation matches 120.. run setblock ~2 ~ ~2 minecraft:respawn_anchor[charges=0]
execute if score @s FormingAnimation matches 120.. run setblock ~-2 ~ ~-2 minecraft:respawn_anchor[charges=0]
execute if score @s FormingAnimation matches 120.. run setblock ~-2 ~ ~2 minecraft:respawn_anchor[charges=0]
execute if score @s FormingAnimation matches 120.. run setblock ~2 ~ ~-2 minecraft:respawn_anchor[charges=0]
execute if score @s FormingAnimation matches 120.. run particle minecraft:glow_squid_ink ~2 ~ ~2 0 0 0 0.1 20
execute if score @s FormingAnimation matches 120.. run particle minecraft:glow_squid_ink ~-2 ~ ~-2 0 0 0 0.1 20
execute if score @s FormingAnimation matches 120.. run particle minecraft:glow_squid_ink ~-2 ~ ~2 0 0 0 0.1 20
execute if score @s FormingAnimation matches 120.. run particle minecraft:glow_squid_ink ~2 ~ ~-2 0 0 0 0.1 20
execute if score @s FormingAnimation matches 120.. run playsound minecraft:block.end_gateway.spawn master @a[distance=..40]
execute if score @s FormingAnimation matches 120.. run playsound minecraft:block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 1 1.3
execute if score @s FormingAnimation matches 120.. run bossbar remove minecraft:forming
execute if score @s FormingAnimation matches 120.. run kill @e[type=item,tag=!forming_base,nbt={PickupDelay: 32767s},distance=..3,sort=nearest,limit=1]
execute if score @s FormingAnimation matches 120.. run tag @s remove forming_base
execute if score @s FormingAnimation matches 120.. run data merge entity @s {PickupDelay:20,NoGravity:0b}
execute if score @s FormingAnimation matches 120.. run scoreboard players reset @s AnchorCharged
execute if score @s FormingAnimation matches 120.. run scoreboard players reset @s FormingAnimation





