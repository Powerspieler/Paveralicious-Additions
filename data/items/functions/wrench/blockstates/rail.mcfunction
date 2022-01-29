# Rotates Rails

## Rail
# Rotate Floor Rails
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=north_south] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ rail[shape=north_south] run setblock ~ ~ ~ rail[shape=east_west]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=north_west] run setblock ~ ~ ~ rail[shape=north_south]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=south_west] run setblock ~ ~ ~ rail[shape=north_west]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=south_east] run setblock ~ ~ ~ rail[shape=south_west]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=north_east] run setblock ~ ~ ~ rail[shape=south_east]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ rail[shape=east_west] run setblock ~ ~ ~ rail[shape=north_east]

# Change Ascending Rails to Floor Ones
execute if block ~ ~ ~ rail[shape=ascending_north] run setblock ~ ~ ~ rail[shape=north_south]
execute if block ~ ~ ~ rail[shape=ascending_south] run setblock ~ ~ ~ rail[shape=north_south]
execute if block ~ ~ ~ rail[shape=ascending_west] run setblock ~ ~ ~ rail[shape=east_west]
execute if block ~ ~ ~ rail[shape=ascending_east] run setblock ~ ~ ~ rail[shape=east_west]

# Ascend Rail when sneaking
execute as @s[scores={sneaking=1..,rotation=-45..45}] if block ~ ~ ~ rail unless block ~ ~ ~1 air run setblock ~ ~ ~ rail[shape=ascending_south]
execute as @s[scores={sneaking=1..,rotation=45..135}] if block ~ ~ ~ rail unless block ~-1 ~ ~ air run setblock ~ ~ ~ rail[shape=ascending_west]
execute as @s[scores={sneaking=1..,rotation=-135..-45}] if block ~ ~ ~ rail unless block ~1 ~ ~ air run setblock ~ ~ ~ rail[shape=ascending_east]
execute as @s[scores={sneaking=1..,rotation=-180..-135}] if block ~ ~ ~ rail unless block ~ ~ ~-1 air run setblock ~ ~ ~ rail[shape=ascending_north]
execute as @s[scores={sneaking=1..,rotation=135..180}] if block ~ ~ ~ rail unless block ~ ~ ~-1 air run setblock ~ ~ ~ rail[shape=ascending_north]

scoreboard players set @s w.fixrotation 0
scoreboard players set @s w.range 0
