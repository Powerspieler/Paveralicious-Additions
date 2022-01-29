scoreboard players set @s bobo.range 0
say insert
execute if entity @s[nbt={Item:{id:"minecraft:music_disc_13"}}] run item modify entity @p[tag=bobo.casted] weapon.mainhand items:boombox/13
