# Wrench -> 2x Iron_Ingot + Diamond
execute as @e[type=item,nbt={Item:{tag:{paveral.wrench:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/wrench

# Anti_Creeper_Grief -> Creeper Head + Firework Star + Powder Snow Bucket
execute as @e[type=item,nbt={Item:{tag:{paveral.anti_creeper_grief:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/anti_creeper_grief

# Lightstaff -> 2x Iron Ingot + Copper_Ingot + Redstone Lamp + 2x Wither Rose
execute as @e[type=item,nbt={Item:{tag:{paveral.lightstaff:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/lightstaff

# Bonk -> Stick
execute as @e[type=item,nbt={Item:{tag:{paveral.bonk:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/bonk

# Jeb_wool -> 16 Colors
execute as @e[type=item,nbt={Item:{tag:{paveral.jeb_wool:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/jeb_wool

# Lightning_Rod -> Trident
execute as @e[type=item,nbt={Item:{tag:{paveral.lightning_rod:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/lightning_rod

# Golden Crook -> GC_Base + Jeb_wool
execute as @e[type=item,nbt={Item:{tag:{paveral.sheepfreeze:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/sheepfreeze

# GC_Base -> 2x Blaze Rod + Amethyst Shard
execute as @e[type=item,nbt={Item:{tag:{paveral.golden_crook_base:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:smithing_table if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:disassembling_table/items/golden_crook_base
