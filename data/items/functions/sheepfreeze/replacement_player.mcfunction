scoreboard players set @p[tag=sf.casted] sf.checkrange 0

execute as @p[tag=sf.casted] at @s run scoreboard players set @s sf.cooldown 960
execute as @s at @s run tag @s add sf.victim
execute as @s at @s run scoreboard players set @s sf.player_back 300
execute as @s at @s run summon sheep ~ ~ ~ {CustomName:'{"text":"jeb_"}',Tags:["sf.sheep"],DeathTime:19,DeathLootTable:"items:empty",Team:"sf.hidename"}
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..25] ~ ~ ~ 1 0.5
execute as @s at @s run particle minecraft:enchant ~ ~ ~ 0 0 0 1 200
execute as @s at @s run summon minecraft:marker ~ ~ ~ {Tags:["sf.marker"]}
gamemode spectator @s
