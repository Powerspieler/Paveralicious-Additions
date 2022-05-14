loot spawn ~ ~0.5 ~ loot paveral:chunkloader
execute if block ~ ~ ~ minecraft:petrified_oak_slab run setblock ~ ~ ~ air
playsound minecraft:block.stone.break master @a[distance=..10]
kill @s
