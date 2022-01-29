scoreboard players set @s bb.range 0

setblock ~ ~ ~ minecraft:air
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust_color_transition 256 256 256 2 0 0 0 ~ ~ ~ 0.25 0.25 0.25 1 100
stopsound @a[distance=..30] * minecraft:entity.ender_dragon.death
playsound minecraft:block.ancient_debris.break master @a[distance=..30]
playsound minecraft:ui.stonecutter.take_result master @a[distance=..30] ~ ~ ~ 1 0.25
playsound minecraft:entity.wither.ambient master @a[distance=..30] ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_dragon.death master @a[distance=..30] ~ ~ ~ 1 2


# Repair
item modify entity @s weapon.mainhand items:repair_25
