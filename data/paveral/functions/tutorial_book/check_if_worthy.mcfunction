execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:knowledge_book"}}] if entity @s[advancements={paveral:root=false}] run function paveral:tutorial_book/remove_knowledge_book
execute as @a at @s if entity @s[nbt={SelectedItem:{id:"minecraft:knowledge_book"}}] if entity @s[advancements={paveral:root=true}] run function paveral:tutorial_book/convert_knowledge_book


