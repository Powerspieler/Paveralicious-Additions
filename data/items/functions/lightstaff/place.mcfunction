scoreboard players set @s ls.range 0

execute positioned ^ ^ ^-0.1 if block ~ ~ ~ #items:ls.raycast.passable run setblock ~ ~ ~ minecraft:light
execute positioned ^ ^ ^-0.1 if block ~ ~ ~ light align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ls.marker"]}

playsound minecraft:item.flintandsteel.use master @s

# Damage
execute unless predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:apply_damage_to_item_without_unbreaking
execute if predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:apply_damage_to_item_with_unbreaking
