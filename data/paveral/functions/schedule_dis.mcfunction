# Execute Disassemble Triggers if players nearby smithing_table
# Note: Disassemble Process interupts if player leaves, however according to disassemble_triggers forming also interrupts if player leaves
execute at @a[tag=paveral.root] store success storage paveral smith_nearby int 1 run clone ~-15 ~-15 ~-15 ~15 ~15 ~15 ~-15 ~-15 ~-15 filtered minecraft:smithing_table force
execute if data storage minecraft:paveral {smith_nearby:1} at @a[tag=paveral.root] store success storage minecraft:paveral loaddis int 1 run clone ~-15 ~-15 ~-15 ~15 ~15 ~15 ~-15 ~-15 ~-15 filtered minecraft:end_rod force
execute if data storage minecraft:paveral {loaddis:1} run function paveral:disassembling_table/disassemble_triggers

execute unless entity @e[type=item,scores={DisTableAnim=1..}] run data merge storage minecraft:paveral {loaddis:0}

# 4t = 5 / sec => 0.2 sec
execute if data storage minecraft:paveral {loaddis:0} run schedule function paveral:schedule_dis 4t
execute if data storage minecraft:paveral {loaddis:1} run schedule function paveral:schedule_dis 1t
