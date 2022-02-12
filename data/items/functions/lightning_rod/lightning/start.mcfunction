# Set Cooldown 1s = 20
tag @s add lr.casted
scoreboard players set @s lr.cooldown 201

playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..75] ~ ~ ~ 1 1.8
playsound minecraft:item.trident.thunder master @a[distance=..75]
scoreboard players set %whiterange lr.raycast 20
scoreboard players set %whitecount lr.dummy 100
scoreboard players remove @s lr.whitecount 1
execute anchored eyes run function items:lightning_rod/lightning/raycast
