# paveral:flying_pig.json
execute as @e[type=minecraft:pig] at @s store result score @s falled_enough run data get entity @s FallDistance
execute as @e[type=minecraft:pig,scores={falled_enough=12..}] at @s run tag @s add falled_enough