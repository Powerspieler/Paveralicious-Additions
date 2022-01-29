execute as @e[dx=0,type=player,tag=!sf.victim,gamemode=!creative] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:sheepfreeze/replacement_player
execute as @e[dx=0,type=!player,type=!#items:sheep_freeze.non_mobs] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function items:sheepfreeze/replacement_entity


scoreboard players remove @s sf.checkrange 1
tag @s add sf.casted
execute if score @s sf.checkrange matches 1.. if block ~ ~ ~ #items:raycast.passable positioned ^ ^ ^0.5 run function items:sheepfreeze/check_for_entity
