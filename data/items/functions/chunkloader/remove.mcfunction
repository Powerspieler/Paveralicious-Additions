forceload remove ~16 ~16 ~-16 ~-16
schedule function items:chunkloader/reclaim_chunks 1t
particle minecraft:portal ~ ~0.55 ~ 0 0 0 0.5 100
playsound minecraft:block.beacon.deactivate block @a[distance=..10] ~ ~ ~ 1 0.5
loot spawn ~ ~0.5 ~ loot paveral:chunkloader
kill @e[type=item,nbt={Item:{id:"minecraft:petrified_oak_slab"}},distance=..2,sort=nearest,limit=1]
kill @s
