summon minecraft:snowball ~ ~ ~ {Motion:[0.5,1.0,0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[0.5,1.0,-0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[-0.5,1.0,0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[-0.5,1.0,-0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[0.0,1.0,0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[0.0,1.0,-0.5],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[0.5,1.0,0.0],Tags:["miss.snowball"]}
summon minecraft:snowball ~ ~ ~ {Motion:[-0.5,1.0,0.0],Tags:["miss.snowball"]}
playsound minecraft:ambient.underwater.loop.additions.ultra_rare master @a[distance=..25]
playsound minecraft:entity.vex.ambient master @a[distance=..25] ~ ~ ~ 1 0.1
scoreboard players reset @s miss.effect
