particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=#items:lightning_rod.mobs,scores={isnametagged=0},distance=..5,tag=!lr.alreadyhitted,sort=nearest,limit=1] at @s run function items:lightning_rod/damage_mob
execute as @e[type=minecraft:phantom,scores={isnametagged=0},distance=..5,tag=!lr.alreadyhitted,sort=nearest,limit=1] at @s run function items:lightning_rod/phantom

scoreboard players remove %whiterange lr.raycast 1
execute if score %whiterange lr.raycast matches 1 if score %whitecount lr.dummy matches 1.. positioned ^ ^ ^0.25 run function items:lightning_rod/lightning/change
execute if score %whiterange lr.raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #items:raycast.passable run function items:lightning_rod/lightning/raycast
