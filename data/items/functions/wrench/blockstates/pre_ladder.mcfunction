execute unless entity @s[nbt={Inventory:[{id:"minecraft:ladder"}]}] run tellraw @s {"text":"You do not have any ladders!","color":"red"}
execute as @s[nbt={Inventory:[{id:"minecraft:ladder"}]}] positioned ^ ^ ^-0.1 if block ~ ~ ~ air run function items:wrench/blockstates/ladder

scoreboard players set @s w.fixrotation 0
scoreboard players set @s w.range 0
