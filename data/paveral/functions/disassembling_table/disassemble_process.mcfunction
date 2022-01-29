execute unless score @s DisTableAnim matches 0..210 run bossbar add disassemble {"text":"Disassembling...","color":"dark_purple"}
execute unless score @s DisTableAnim matches 0..210 run bossbar set minecraft:disassemble color purple
execute unless score @s DisTableAnim matches 0..210 run bossbar set minecraft:disassemble max 200
execute unless score @s DisTableAnim matches 0..210 run bossbar set minecraft:disassemble players @a[distance=..30]
execute unless score @s DisTableAnim matches 0..210 run data merge entity @s {Motion:[0.0,0.0,0.0],NoGravity:1b,PickupDelay:32767,Age:-32768,Tags:["disassemble"]}

scoreboard players add @s DisTableAnim 1
execute store result bossbar minecraft:disassemble value run scoreboard players get @s DisTableAnim

execute if score @s DisTableAnim matches 1 run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..40]
execute if score @s DisTableAnim matches 1 run scoreboard players reset @s DisTableValid
execute if score @s DisTableAnim matches 1 run tp ~ ~-0.4 ~
execute if score @s DisTableAnim matches 1 run execute as @e[type=item,tag=forming,distance=..4] at @s run particle minecraft:enchant ~ ~ ~ 0 0 0 0.3 100
execute if score @s DisTableAnim matches 1 run particle minecraft:enchant ~ ~ ~ 0 0 0 0.2 100

execute if score @s DisTableAnim matches 25 run particle minecraft:glow ~ ~ ~ 0 0 0 1 100
execute if score @s DisTableAnim matches 25 run playsound minecraft:block.portal.ambient master @a[distance=..40] ~ ~ ~ 1 1.75

execute if score @s DisTableAnim matches 40..80 run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.1 10
execute if score @s DisTableAnim matches 40..60 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.50
execute if score @s DisTableAnim matches 60..75 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.55
execute if score @s DisTableAnim matches 75..85 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.65
execute if score @s DisTableAnim matches 85..90 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 1.8
execute if score @s DisTableAnim matches 90 run playsound minecraft:block.beacon.power_select master @a[distance=..40] ~ ~ ~ 1 2.0

execute if score @s DisTableAnim matches 100..120 run particle end_rod ~ ~ ~ 0 0.25 0 0 5
execute if score @s DisTableAnim matches 100 run playsound minecraft:item.trident.thunder master @a[distance=..40]
execute if score @s DisTableAnim matches 100 run advancement grant @a[distance=..10] only paveral:first_dis

execute if score @s DisTableAnim matches 135 run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..40]
execute if score @s DisTableAnim matches 135 run particle minecraft:totem_of_undying ~ ~ ~ 0 0.25 0 0.1 50

execute if score @s DisTableAnim matches 168 run playsound minecraft:block.anvil.destroy master @a[distance=..40] ~ ~ ~ 1 0.5

execute if score @s DisTableAnim matches 200.. run bossbar remove minecraft:disassemble
execute if score @s DisTableAnim matches 200.. run kill @s
