setblock ~ ~ ~ minecraft:petrified_oak_slab
particle minecraft:reverse_portal ~ ~0.55 ~ 0 0 0 0.5 100
playsound minecraft:block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:entity.ghast.scream master @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:block.stone.place master @a[distance=..10]

forceload add ~16 ~16 ~-16 ~-16

tag @s add placed
