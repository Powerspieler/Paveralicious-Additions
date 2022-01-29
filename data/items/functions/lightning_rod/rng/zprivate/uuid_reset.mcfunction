summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg lr.math run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp lr.math run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 lr.math run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 lr.math run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg lr.math += #temp lr.math
scoreboard players operation #lcg lr.math += #temp1 lr.math
scoreboard players operation #lcg lr.math += #temp2 lr.math
kill @e[tag=uuid]