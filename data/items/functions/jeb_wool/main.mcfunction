execute as @e[type=minecraft:glow_item_frame,tag=paveral.jeb_wool,tag=!placed] at @s run function items:jeb_wool/place
execute as @e[type=minecraft:glow_item_frame,tag=paveral.jeb_wool,tag=placed] at @s unless block ~ ~ ~ white_wool run function items:jeb_wool/remove
