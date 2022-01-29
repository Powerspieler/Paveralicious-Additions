scoreboard players set @s bb.range 0

setblock ~ ~ ~ minecraft:air
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:ash ~ ~ ~ 0.25 0.25 0.25 1 500
playsound minecraft:entity.elder_guardian.death master @a[distance=..30] ~ ~ ~ 1 0.75
playsound minecraft:entity.wither.break_block master @a[distance=..30] ~ ~ ~ 1 0.25


# Damage
execute unless predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:apply_damage_to_item_without_unbreaking
execute if predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:apply_damage_to_item_with_unbreaking
