execute unless entity @e[tag=forming,distance=..10] run function paveral:check_altar
execute if score @s AltarValid matches 1 run function paveral:check_charge
execute if score @s AnchorCharged matches 1 run function paveral:forming_process

execute as @e[type=item,nbt={Item:{id: "minecraft:creeper_head", Count: 1b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:firework_star"}},sort=nearest,limit=1] {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{id: "minecraft:creeper_head", Count: 1b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{id:"minecraft:powder_snow_bucket"}},sort=nearest,limit=1] {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{id: "minecraft:creeper_head", Count: 1b}},tag=forming_base,scores={FormingAnimation=119}] at @s run function paveral:forms/anti_creeper_grief.addition
