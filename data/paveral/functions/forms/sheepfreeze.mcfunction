execute unless entity @e[tag=forming,distance=..10] run function paveral:check_altar
execute if score @s AltarValid matches 1 run function paveral:check_charge
execute if score @s AnchorCharged matches 1 run function paveral:forming_process

execute as @e[type=item,nbt={Item:{tag:{paveral.golden_crook_base:1b}, Count: 1b}},tag=forming_base,scores={FormingAnimation=1}] at @s run data merge entity @e[type=item,nbt={Item:{tag:{paveral.jeb_wool:1b}, Count: 1b}},sort=nearest,limit=1] {Motion:[0.0,0.0,0.0],NoGravity:1b,PickupDelay:32767,Age:-32768,Tags:["forming"]}
execute as @e[type=item,nbt={Item:{tag:{paveral.golden_crook_base:1b}, Count: 1b}},tag=forming_base,scores={FormingAnimation=119}] at @s run function paveral:forms/sheepfreeze.addition
