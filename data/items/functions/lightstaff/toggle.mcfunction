scoreboard players set @s ls.range 0

execute if block ~ ~ ~ light[level=1] run setblock ~ ~ ~ air
execute if block ~ ~ ~ light[level=2] run setblock ~ ~ ~ light[level=1]
execute if block ~ ~ ~ light[level=3] run setblock ~ ~ ~ light[level=2]
execute if block ~ ~ ~ light[level=4] run setblock ~ ~ ~ light[level=3]
execute if block ~ ~ ~ light[level=5] run setblock ~ ~ ~ light[level=4]
execute if block ~ ~ ~ light[level=6] run setblock ~ ~ ~ light[level=5]
execute if block ~ ~ ~ light[level=7] run setblock ~ ~ ~ light[level=6]
execute if block ~ ~ ~ light[level=8] run setblock ~ ~ ~ light[level=7]
execute if block ~ ~ ~ light[level=9] run setblock ~ ~ ~ light[level=8]
execute if block ~ ~ ~ light[level=10] run setblock ~ ~ ~ light[level=9]
execute if block ~ ~ ~ light[level=11] run setblock ~ ~ ~ light[level=10]
execute if block ~ ~ ~ light[level=12] run setblock ~ ~ ~ light[level=11]
execute if block ~ ~ ~ light[level=13] run setblock ~ ~ ~ light[level=12]
execute if block ~ ~ ~ light[level=14] run setblock ~ ~ ~ light[level=13]
execute if block ~ ~ ~ light[level=15] run setblock ~ ~ ~ light[level=14]
