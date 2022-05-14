# Startup of Forge Process
execute as @e[type=item,nbt={Item:{tag:{paveral.wrench:1b}}},tag=!inited] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=paveral.forge,distance=..3] run function paveral:forge/check_forge

execute as @e[type=marker,tag=paveral.forge] at @s run function paveral:forge/check_furnace

schedule function paveral:schedule_forge 4t
