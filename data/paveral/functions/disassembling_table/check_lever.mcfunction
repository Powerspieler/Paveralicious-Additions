execute if block ~1 ~-1 ~ minecraft:lever[powered=true] run scoreboard players set @s DisTableLevered 1
execute if block ~-1 ~-1 ~ minecraft:lever[powered=true] run scoreboard players set @s DisTableLevered 1
execute if block ~ ~-1 ~1 minecraft:lever[powered=true] run scoreboard players set @s DisTableLevered 1
execute if block ~ ~-1 ~-1 minecraft:lever[powered=true] run scoreboard players set @s DisTableLevered 1

execute if block ~1 ~-1 ~ minecraft:lever[powered=false] run particle glow ~0.75 ~-1 ~
execute if block ~-1 ~-1 ~ minecraft:lever[powered=false] run particle glow ~-0.75 ~-1 ~
execute if block ~ ~-1 ~1 minecraft:lever[powered=false] run particle glow ~ ~-1 ~0.75
execute if block ~ ~-1 ~-1 minecraft:lever[powered=false] run particle glow ~ ~-1 ~-0.75
