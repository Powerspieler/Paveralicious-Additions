# Check for Furnace Fuel
# All Full
execute unless block ~ ~1 ~ minecraft:dispenser{Items:[]} if block ~3 ~ ~ minecraft:furnace[lit=true] if block ~-3 ~ ~ minecraft:furnace[lit=true] if block ~ ~ ~3 minecraft:furnace[lit=true] if block ~ ~ ~-3 minecraft:furnace[lit=true] run tag @s add ready
execute unless block ~ ~1 ~ minecraft:dispenser{Items:[]} if block ~3 ~ ~ minecraft:furnace[lit=true] if block ~-3 ~ ~ minecraft:furnace[lit=true] if block ~ ~ ~3 minecraft:furnace[lit=true] if block ~ ~ ~-3 minecraft:furnace[lit=true] run function paveral:forge/craft

# Show Empty Furnaces
execute if block ~3 ~ ~ minecraft:furnace[lit=false] run particle minecraft:snowflake ~3 ~1 ~ 0 1 0 0.01 50
execute if block ~-3 ~ ~ minecraft:furnace[lit=false] run particle minecraft:snowflake ~-3 ~1 ~ 0 1 0 0.01 50
execute if block ~ ~ ~3 minecraft:furnace[lit=false] run particle minecraft:snowflake ~ ~1 ~3 0 1 0 0.01 50
execute if block ~ ~ ~-3 minecraft:furnace[lit=false] run particle minecraft:snowflake ~ ~1 ~-3 0 1 0 0.01 50

execute positioned ~ ~2 ~ run tag @e[type=item,nbt={Item:{tag:{paveral.wrench:1b}}},sort=nearest,limit=1,distance=..2] add inited
execute unless entity @s[tag=ready] run kill @s
