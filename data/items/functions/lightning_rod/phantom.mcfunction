execute as @a[tag=lr.casted,sort=nearest,limit=1] at @s run scoreboard players add @s lr.phantom 200
execute as @a[tag=lr.casted,sort=nearest,limit=1] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.5 2
particle minecraft:flash ~ ~ ~ 0 0 0 1 5 force
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 10 1000
execute if score #doFireTick gamerule matches 0 unless entity @p[distance=..5] run summon minecraft:lightning_bolt
kill @s
