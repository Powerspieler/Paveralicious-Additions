scoreboard players remove @s ls.range 1

execute positioned ^ ^ ^ unless block ^ ^ ^ #items:ls.raycast.passable unless block ^ ^ ^ light run function items:lightstaff/place
execute positioned ^ ^ ^ if block ^ ^ ^ minecraft:light run function items:lightstaff/toggle

execute if block ^ ^ ^ #items:ls.raycast.passable positioned ^ ^ ^0.1 if score @s ls.range matches 1.. run function items:lightstaff/raycast
