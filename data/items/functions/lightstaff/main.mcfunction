scoreboard players set @a ls.range 50
execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.lightstaff:1b}}}] at @s unless entity @s[nbt={SelectedItem:{tag:{Damage:100}}}] anchored eyes run function items:lightstaff/raycast

#Show Light Level in Block
execute at @a[nbt={SelectedItem:{tag:{paveral.lightstaff:1b}}}] as @e[type=marker,tag=ls.marker,distance=..15] at @s run function items:lightstaff/visual

execute as @e[type=marker,tag=ls.marker] at @s unless block ~ ~ ~ light run kill @s
