execute unless entity @e[tag=forming,distance=..10] run function paveral:check_altar
execute if score @s AltarValid matches 1 run function paveral:check_charge
execute if score @s AnchorCharged matches 1 run function paveral:forming_process

execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book", Count: 1b}},tag=forming_base,scores={FormingAnimation=119}] at @s run function paveral:forms/missingno.addition
