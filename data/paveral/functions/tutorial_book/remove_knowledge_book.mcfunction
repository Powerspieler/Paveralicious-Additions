item modify entity @s weapon.mainhand paveral:remove_knowledge_block
tellraw @s {"text":"The book fell to dust since you are not yet worthy...","color":"dark_purple"}
execute anchored eyes run particle minecraft:ash ^ ^ ^0.3 0.2 0.2 0.2 0.5 50
playsound minecraft:block.sculk_sensor.break master @s