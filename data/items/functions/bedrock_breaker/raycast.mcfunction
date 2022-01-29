scoreboard players remove @s bb.range 1
tag @s add bb.casted

execute positioned ^ ^ ^ if block ~ ~ ~ minecraft:bedrock unless entity @s[nbt={SelectedItem:{tag:{Damage:100}}}] run function items:bedrock_breaker/break
execute positioned ^ ^ ^ if block ~ ~ ~ minecraft:ancient_debris run function items:bedrock_breaker/charge

execute if block ^ ^ ^ #items:raycast.passable positioned ^ ^ ^0.1 if score @s bb.range matches 1.. run function items:bedrock_breaker/raycast
