# Rotates Redstone Components

# Dispenser
execute if block ~ ~ ~ dispenser unless block ~ ~ ~ dispenser{Items:[]} at @s run tellraw @s {"text":"Dispenser needs to be empty!","color":"red"}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=north]{Items:[]} run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ dispenser[facing=north]{Items:[]} run setblock ~ ~ ~ dispenser[facing=up]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=east]{Items:[]} run setblock ~ ~ ~ dispenser[facing=north]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=south]{Items:[]} run setblock ~ ~ ~ dispenser[facing=east]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=west]{Items:[]} run setblock ~ ~ ~ dispenser[facing=south]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=down]{Items:[]} run setblock ~ ~ ~ dispenser[facing=west]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dispenser[facing=up]{Items:[]} run setblock ~ ~ ~ dispenser[facing=down]{Items:[]}

# Dropper
execute if block ~ ~ ~ dropper unless block ~ ~ ~ dropper{Items:[]} run tellraw @s {"text":"Dropper needs to be empty!","color":"red"}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=north]{Items:[]} run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ dropper[facing=north]{Items:[]} run setblock ~ ~ ~ dropper[facing=up]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=east]{Items:[]} run setblock ~ ~ ~ dropper[facing=north]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=south]{Items:[]} run setblock ~ ~ ~ dropper[facing=east]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=west]{Items:[]} run setblock ~ ~ ~ dropper[facing=south]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=down]{Items:[]} run setblock ~ ~ ~ dropper[facing=west]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ dropper[facing=up]{Items:[]} run setblock ~ ~ ~ dropper[facing=down]{Items:[]}

# Hopper
execute if block ~ ~ ~ hopper unless block ~ ~ ~ hopper{Items:[]} run tellraw @s {"text":"Hopper needs to be empty!","color":"red"}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ hopper[facing=north]{Items:[]} run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ hopper[facing=north]{Items:[]} run setblock ~ ~ ~ hopper[facing=down]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ hopper[facing=east]{Items:[]} run setblock ~ ~ ~ hopper[facing=north]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ hopper[facing=south]{Items:[]} run setblock ~ ~ ~ hopper[facing=east]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ hopper[facing=west]{Items:[]} run setblock ~ ~ ~ hopper[facing=south]{Items:[]}
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ hopper[facing=down]{Items:[]} run setblock ~ ~ ~ hopper[facing=west]{Items:[]}

# Piston
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=north] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ piston[facing=north] run setblock ~ ~ ~ piston[facing=up]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=east] run setblock ~ ~ ~ piston[facing=north]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=south] run setblock ~ ~ ~ piston[facing=east]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=west] run setblock ~ ~ ~ piston[facing=south]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=down] run setblock ~ ~ ~ piston[facing=west]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ piston[facing=up] run setblock ~ ~ ~ piston[facing=down]
execute if block ~ ~ ~ piston run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace piston_head

# Sticky Piston
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=north] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ sticky_piston[facing=north] run setblock ~ ~ ~ sticky_piston[facing=up]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=east] run setblock ~ ~ ~ sticky_piston[facing=north]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=south] run setblock ~ ~ ~ sticky_piston[facing=east]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=west] run setblock ~ ~ ~ sticky_piston[facing=south]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=down] run setblock ~ ~ ~ sticky_piston[facing=west]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ sticky_piston[facing=up] run setblock ~ ~ ~ sticky_piston[facing=down]
execute if block ~ ~ ~ piston run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace piston_head

# Redstone Comparator
# Compare
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=north,mode=compare] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ comparator[facing=north,mode=compare] run setblock ~ ~ ~ comparator[facing=west,mode=compare]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=east,mode=compare] run setblock ~ ~ ~ comparator[facing=north,mode=compare]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=south,mode=compare] run setblock ~ ~ ~ comparator[facing=east,mode=compare]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=west,mode=compare] run setblock ~ ~ ~ comparator[facing=south,mode=compare]

# Subtract
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=north,mode=subtract] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ comparator[facing=north,mode=subtract] run setblock ~ ~ ~ comparator[facing=west,mode=subtract]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=east,mode=subtract] run setblock ~ ~ ~ comparator[facing=north,mode=subtract]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=south,mode=subtract] run setblock ~ ~ ~ comparator[facing=east,mode=subtract]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ comparator[facing=west,mode=subtract] run setblock ~ ~ ~ comparator[facing=south,mode=subtract]

# Redstone Repeater
# Delay 1
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=north,delay=1] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ repeater[facing=north,delay=1] run setblock ~ ~ ~ repeater[facing=west,delay=1]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=east,delay=1] run setblock ~ ~ ~ repeater[facing=north,delay=1]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=south,delay=1] run setblock ~ ~ ~ repeater[facing=east,delay=1]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=west,delay=1] run setblock ~ ~ ~ repeater[facing=south,delay=1]

# Delay 2
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=north,delay=2] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ repeater[facing=north,delay=2] run setblock ~ ~ ~ repeater[facing=west,delay=2]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=east,delay=2] run setblock ~ ~ ~ repeater[facing=north,delay=2]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=south,delay=2] run setblock ~ ~ ~ repeater[facing=east,delay=2]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=west,delay=2] run setblock ~ ~ ~ repeater[facing=south,delay=2]

# Delay 3
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=north,delay=3] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ repeater[facing=north,delay=3] run setblock ~ ~ ~ repeater[facing=west,delay=3]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=east,delay=3] run setblock ~ ~ ~ repeater[facing=north,delay=3]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=south,delay=3] run setblock ~ ~ ~ repeater[facing=east,delay=3]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=west,delay=3] run setblock ~ ~ ~ repeater[facing=south,delay=3]

# Delay 4
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=north,delay=4] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ repeater[facing=north,delay=4] run setblock ~ ~ ~ repeater[facing=west,delay=4]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=east,delay=4] run setblock ~ ~ ~ repeater[facing=north,delay=4]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=south,delay=4] run setblock ~ ~ ~ repeater[facing=east,delay=4]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ repeater[facing=west,delay=4] run setblock ~ ~ ~ repeater[facing=south,delay=4]

# Observer
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=north] run scoreboard players set @s w.fixrotation 1
execute as @s[scores={w.fixrotation=..1}] if block ~ ~ ~ observer[facing=north] run setblock ~ ~ ~ observer[facing=up,powered=false]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=east] run setblock ~ ~ ~ observer[facing=north,powered=false]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=south] run setblock ~ ~ ~ observer[facing=east,powered=false]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=west] run setblock ~ ~ ~ observer[facing=south,powered=false]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=down] run setblock ~ ~ ~ observer[facing=west,powered=false]
execute as @s[scores={w.fixrotation=..0}] if block ~ ~ ~ observer[facing=up] run setblock ~ ~ ~ observer[facing=down,powered=false]



scoreboard players set @s w.fixrotation 0
scoreboard players set @s w.range 0
