# Change "open"-Blockstate on Iron Trapdoors

##Top
#North
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=north,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=top,facing=north,open=false] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=north,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=north,open=true] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=north,open=false]

#West
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=west,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=top,facing=west,open=false] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=west,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=west,open=true] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=west,open=false]

#South
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=south,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=top,facing=south,open=false] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=south,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=south,open=true] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=south,open=false]

#East
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=east,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=top,facing=east,open=false] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=east,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=top,facing=east,open=true] run setblock ~ ~ ~ iron_trapdoor[half=top,facing=east,open=false]


##Bottom
#North
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=north,open=false]

#West
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=west,open=false]

#South
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=south,open=false]

#East
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=false] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=false] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=true]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=true] run setblock ~ ~ ~ iron_trapdoor[half=bottom,facing=east,open=false]

scoreboard players set @s w.fixrotation 0
scoreboard players set @s w.range 0
