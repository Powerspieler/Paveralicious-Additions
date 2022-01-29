tag @s add lr.alreadyhitted
execute store result score @s health run data get entity @s Health
execute if score @s health > #value lr.damage store result entity @s Health float 1 run scoreboard players operation @s health -= #value lr.damage
execute if score @s health <= #value lr.damage run kill @s

data merge entity @s {Fire:100s}