tag @a[tag=bb.casted] remove bb.casted
scoreboard players set @a bb.range 50


execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.bedrock_breaker:1b}}}] at @s anchored eyes run function items:bedrock_breaker/raycast

# Remove Mending
execute as @a[nbt={SelectedItem:{tag:{paveral.bedrock_breaker:1b}}}] if predicate items:mending_on_selected_tool unless predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:remove_enchantments
execute as @a[nbt={SelectedItem:{tag:{paveral.bedrock_breaker:1b}}}] if predicate items:mending_on_selected_tool if predicate items:unbreaking_on_selected_tool run item modify entity @s weapon.mainhand items:keep_unbreaking
