tag @a[tag=bobo.casted] remove bobo.casted
scoreboard players set @a bobo.range 50

execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.boombox:1b}}}] at @s anchored eyes run function items:boombox/raycast
