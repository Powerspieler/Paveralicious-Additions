execute positioned ~ -96 ~ run tp @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] @s
execute positioned ~ -32 ~ run tp @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] @s

data merge entity @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] {NoAI:0b,NoGravity:0b,Invulnerable:0b,Silent:0b}

playsound minecraft:entity.illusioner.mirror_move master @a[distance=..25] ~ ~ ~ 1 1.25
particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 .2 100

kill @e[type=experience_orb,sort=nearest,limit=1]
effect clear @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] minecraft:invisibility
tag @e[tag=sf.victim,sort=nearest,limit=1,distance=..2] remove sf.victim
kill @s
