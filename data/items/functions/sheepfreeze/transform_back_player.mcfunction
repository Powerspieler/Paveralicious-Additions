gamemode survival @p[tag=sf.victim,distance=..2]

playsound minecraft:entity.illusioner.mirror_move master @a[distance=..25] ~ ~ ~ 1 1.25
particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 .2 100

kill @e[type=experience_orb,sort=nearest,limit=1]
effect clear @p[tag=sf.victim,distance=..2] minecraft:invisibility
tag @p[tag=sf.victim,distance=..2] remove sf.victim
kill @s
