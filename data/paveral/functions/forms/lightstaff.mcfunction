execute unless entity @e[tag=forming,distance=..10] run function paveral:check_altar
execute if score @s AltarValid matches 1 run function paveral:check_charge
execute if score @s AnchorCharged matches 1 run function paveral:forming_process

execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", Count: 2b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot"}},sort=nearest,limit=1] {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", Count: 2b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp"}},sort=nearest,limit=1] {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", Count: 2b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:wither_rose", Count: 2b}},sort=nearest,limit=1] {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", Count: 2b}},tag=forming_base,scores={FormingAnimation=119}] at @s run function paveral:forms/lightstaff.addition
