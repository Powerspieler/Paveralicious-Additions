# Place Ladder
execute as @s[scores={rotation=-45..45}] run setblock ~ ~ ~ ladder[facing=north]
execute as @s[scores={rotation=45..135}] run setblock ~ ~ ~ ladder[facing=east]
execute as @s[scores={rotation=-135..-45}] run setblock ~ ~ ~ ladder[facing=west]
execute as @s[scores={rotation=-180..-135}] run setblock ~ ~ ~ ladder[facing=south]
execute as @s[scores={rotation=135..180}] run setblock ~ ~ ~ ladder[facing=south]

playsound minecraft:block.ladder.place block @s

# Remove Ladder from Inventory
clear @s minecraft:ladder 1
