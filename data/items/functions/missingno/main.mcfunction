execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]}] at @s run effect give @s nausea 17 10 true
execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]}] at @s run effect give @s slowness 17 4 true
execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]}] at @s run effect give @s blindness 17 2 true

execute as @e[tag=miss.snowball] at @s run particle block_marker air ~ ~ ~

execute as @a[nbt={Inventory:[{id:"minecraft:jigsaw",tag:{paveral.missingno:1b}}]},scores={miss.effect=100..}] at @s run function items:missingno/miss_effect
