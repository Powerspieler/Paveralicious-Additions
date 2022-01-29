# Execute Forming Triggers if players nearby end_portal_frame
# Note: Forming Process interupts if player leaves, however according to forming_triggers forming also interrupts if player leaves
execute at @a[tag=paveral.root] store success storage paveral endp_nearby int 1 run clone ~-15 ~-15 ~-15 ~15 ~15 ~15 ~-15 ~-15 ~-15 filtered minecraft:end_portal_frame force
execute if data storage minecraft:paveral {endp_nearby:1} run data merge storage minecraft:paveral {loadforming:1}
execute if data storage minecraft:paveral {loadforming:1} run function paveral:forming_triggers

execute unless entity @e[type=item,scores={FormingAnimation=1..}] run data merge storage minecraft:paveral {loadforming:0}

# 4t = 5 / sec => 0.2 sec
execute if data storage minecraft:paveral {loadforming:0} run schedule function paveral:schedule_forming 4t
execute if data storage minecraft:paveral {loadforming:1} run schedule function paveral:schedule_forming 1t
