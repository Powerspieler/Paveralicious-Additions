# Fix for forming stuck at 119 because item from the forming trigger has changed
execute as @e[type=item,scores={FormingAnimation=119}] at @s run function paveral:forming_process

# EnchBook.Knockb2 + Netherite_Scrap = Enhanced Knockbock
execute as @e[type=item,nbt={Item:{id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:knockback"}]}}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.diary.id.34,distance=..15] run function paveral:forms/enhanced_knockback
execute as @e[type=item,nbt={Item:{id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:knockback"}]}}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.diary.id.84,distance=..15] run function paveral:forms/enhanced_knockback

# Stick + Enhanced Knockback = 'Bonk'
execute as @e[type=item,nbt={Item:{id: "minecraft:stick", Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Enhanced Knockback"}']}}}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.diary.id.34,distance=..15] run function paveral:forms/bonk

# EnchBook.Channeling + Netherite_Scrap = Enhanced Channeling
execute as @e[type=item,nbt={Item:{id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:channeling"}]}}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.diary.id.84,distance=..15] run function paveral:forms/enhanced_channeling

# Trident + Enhanced Channeling = Lightning Rod
execute as @e[type=item,nbt={Item:{id: "minecraft:trident", Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Enhanced Channeling"}']}}}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.diary.id.17,distance=..15] run function paveral:forms/lightning_rod

# 2x Blaze_Rod + Amethyst Shard = golden_crook_base
execute as @e[type=item,nbt={Item:{id: "minecraft:blaze_rod", Count: 2b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.fairy_tail.id.1,distance=..15] run function paveral:forms/golden_crook_base
execute as @e[type=item,nbt={Item:{id: "minecraft:blaze_rod", Count: 2b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.dis.golden_crook_base,distance=..15] run function paveral:forms/golden_crook_base

# All 16 Wool Colors = jeb_wool
execute as @e[type=item,nbt={Item:{id: "minecraft:black_wool", Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:red_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:green_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:brown_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:purple_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:cyan_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gray_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:pink_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:lime_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:yellow_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:light_blue_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:magenta_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:orange_wool",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:white_wool",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:forms/jeb_wool

# golden_crook_base + jeb_wool = Golden golden_crook_base
execute as @e[type=item,nbt={Item:{tag:{paveral.golden_crook_base:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{tag:{paveral.jeb_wool:1b}, Count: 1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.fairy_tail.id.1,distance=..15] run function paveral:forms/sheepfreeze
execute as @e[type=item,nbt={Item:{tag:{paveral.golden_crook_base:1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{tag:{paveral.jeb_wool:1b}, Count: 1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.dis.sheepfreeze,distance=..15] run function paveral:forms/sheepfreeze

# Creeper_Head + Firework_Star + Powder_Snow_Bucket = Anti Creeper Grief
execute as @e[type=item,nbt={Item:{id: "minecraft:creeper_head", Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:firework_star",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:powder_snow_bucket",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.dis.anti_creeper_grief,distance=..15] run function paveral:forms/anti_creeper_grief

# 2x Iron Ingot + Copper_Ingot + Redstone_Lamp + 2x Wither Rose = Lightstaff
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", Count: 2b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:wither_rose",Count:2b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.dis.lightstaff,distance=..15] run function paveral:forms/lightstaff

# Tutorial Book Disassemble
execute as @e[type=item,nbt={Item:{tag:{paveral.tutorial_book: 1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @a[advancements={paveral:root=true},tag=paveral.wetpaper,distance=..15] run function paveral:forms/tutorial_book_dis

# KnowledgeBook -> ???
execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book", Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @a[advancements={paveral:root=true},distance=..15] run function paveral:forms/missingno

# 1x Obsidian + 2x Piston + 2x TNT + 1x Lever, 1x Oak_Trapdoor, 4x Ancient Debris  = Bedrock Breaker
execute as @e[type=item,nbt={Item:{id: "minecraft:ancient_debris", Count: 4b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:piston",Count:2b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:2b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:lever",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_trapdoor",Count:1b}},distance=..1] if entity @a[advancements={paveral:root=true},tag=paveral.bedrock_breaker,distance=..15] run function paveral:forms/bedrock_breaker

# Tutorial Book Forge
execute as @e[type=item,nbt={Item:{tag:{paveral.tutorial_book_dis: 1b}, Count: 1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:lodestone if entity @a[advancements={paveral:root=true},tag=paveral.wetpaper,distance=..15] run function paveral:forms/tutorial_book_forge
