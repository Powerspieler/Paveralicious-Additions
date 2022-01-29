scoreboard players set @p[tag=sf.casted] sf.checkrange 0

execute as @p[tag=sf.casted] at @s run scoreboard players set @s sf.cooldown 960

execute if entity @s[type=wither] run advancement grant @p[tag=sf.casted] only paveral:jeb_wither

data merge entity @s {NoAI:1b,Silent:1b,NoGravity:1b,Invulnerable:1b,Tags:["sf.victim"]}
execute as @s at @s run summon sheep ~ ~ ~ {CustomName:'{"text":"jeb_"}',Tags:["sf.sheep"],DeathTime:19,DeathLootTable:"items:empty",Team:"sf.hidename"}
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..25] ~ ~ ~ 1 0.5
execute as @s at @s run particle minecraft:enchant ~ ~ ~ 0 0 0 1 200
execute as @s at @s run summon minecraft:marker ~ ~ ~ {Tags:["sf.marker"]}

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run tp @s ~ -96 ~
execute unless entity @s[nbt={Dimension:"minecraft:overworld"}] run tp @s ~ -32 ~
