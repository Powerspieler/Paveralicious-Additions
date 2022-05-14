scoreboard players add @s paveral.forge.craft 1

execute if score @s paveral.forge.craft matches 1 run data merge block ~ ~1 ~ {Lock:"l0cKtHiS"}
execute if score @s paveral.forge.craft matches 1 run playsound minecraft:block.piston.extend master @a[distance=..15]
execute if score @s paveral.forge.craft matches 1 run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0 0 0 0.1 10


execute if score @s paveral.forge.craft matches 5 run particle minecraft:end_rod ~1.5 ~ ~ 1 0 0 0.1 50
execute if score @s paveral.forge.craft matches 5 run playsound minecraft:block.ender_chest.close master @a[distance=..15] ~ ~ ~ 1 1.75

execute if score @s paveral.forge.craft matches 10 run particle minecraft:end_rod ~-1.5 ~ ~ 1 0 0 0.1 50
execute if score @s paveral.forge.craft matches 10 run playsound minecraft:block.ender_chest.close master @a[distance=..15] ~ ~ ~ 1 1.75

execute if score @s paveral.forge.craft matches 15 run particle minecraft:end_rod ~ ~ ~1.5 0 0 1 0.1 50
execute if score @s paveral.forge.craft matches 15 run playsound minecraft:block.ender_chest.close master @a[distance=..15] ~ ~ ~ 1 1.75

execute if score @s paveral.forge.craft matches 20 run particle minecraft:end_rod ~ ~ ~-1.5 0 0 1 0.1 50
execute if score @s paveral.forge.craft matches 20 run playsound minecraft:block.ender_chest.close master @a[distance=..15] ~ ~ ~ 1 1.75

execute if score @s paveral.forge.craft matches 25 run playsound minecraft:block.end_gateway.spawn master @a[distance=..15]

execute if score @s paveral.forge.craft matches 30 run function paveral:forge/recipes
execute if score @s paveral.forge.craft matches 30 run playsound minecraft:block.lava.extinguish master @a[distance=..15]
execute if score @s paveral.forge.craft matches 30 run particle minecraft:ash ~ ~1.5 ~ 0.5 0 0.5 0.5 100
execute if score @s paveral.forge.craft matches 31.. run data merge block ~ ~1 ~ {Lock:""}
execute if score @s paveral.forge.craft matches 31.. run kill @s
