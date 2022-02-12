# Used by ["lightning_rod"]
execute as @a[scores={rclick=1..}] at @s run scoreboard players reset @s rclick

# Mark name tagged entities. Used by ["lightning_rod"]
execute as @a[scores={lr.whitecount=1..}] as @e[type=!player] at @s store success score @s isnametagged run data get entity @s CustomName

# Check for gamerule. Used by ["lightning_rod"]
execute if entity @a[scores={lr.whitecount=1..}] store result score #doFireTick gamerule run gamerule doFireTick

# Used by ["wrench"]
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{paveral.wrench:1b}}},scores={sneaking=1..}] at @s run scoreboard players reset @s sneaking

# Used by ["wrench"]
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{paveral.wrench:1b}}}] store result score @s rotation run data get entity @s Rotation[0]





# ???
execute if entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]}] run scoreboard objectives add miss.effect minecraft.custom:minecraft.walk_one_cm
execute unless entity @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]}] run scoreboard objectives remove miss.effect

# Update lightning_rod texture from older versions
execute as @a[nbt={SelectedItem:{tag:{of_pvrl_lightning_rod:1b}}}] run item modify entity @s weapon.mainhand items:update_old_lightning_rod

# Convert Advancement "paveral:root" to Tag for being detected by predicates
execute as @a[tag=!paveral.root,advancements={paveral:root=true}] at @s run tag @s add paveral.root
execute as @a[tag=paveral.root,advancements={paveral:root=false}] at @s run tag @s remove paveral.root

# Bedrock Breaker Cat Morning gift
execute as @a[tag=!paveral.bedrock_breaker_not_found,tag=!paveral.bedrock_breaker] run tag @s add paveral.bedrock_breaker_not_found
execute as @a[tag=!paveral.bedrock_breaker,nbt={Inventory:[{tag:{paveral.bedrock_breaker:1b}}]}] run tag @s add paveral.bedrock_breaker
execute as @a[tag=paveral.bedrock_breaker] run tag @s remove paveral.bedrock_breaker_not_found

execute as @a[tag=paveral.bedrock_breaker_not_found,scores={sleep_in_bed=1..}] at @s run tag @e[type=cat,distance=..10] add paveral.bedrock_breaker_not_found
execute as @a[tag=paveral.bedrock_breaker_not_found,scores={sleep_in_bed=1..}] run scoreboard players reset @s sleep_in_bed
execute as @a[tag=paveral.bedrock_breaker] at @s run tag @e[type=cat,distance=..10] remove paveral.bedrock_breaker_not_found
