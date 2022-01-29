scoreboard players set @a w.range 50
execute as @a[scores={rclick=1..},nbt={SelectedItem:{tag:{paveral.wrench:1b}}}] at @s anchored eyes run function items:wrench/raycast

# Switch Mode with [drop item]
execute as @a at @s unless score @s sneaking matches 1.. run data merge entity @e[type=item,distance=..2,sort=nearest,limit=1,tag=!w.mode_switched,tag=!disassemble,nbt={Item:{tag:{paveral.wrench:1b,mode:terracotta}}}] {Item:{tag:{mode:redstone}},Tags:["w.mode_switched"],PickupDelay:0s}
execute as @a at @s unless score @s sneaking matches 1.. run data merge entity @e[type=item,distance=..2,sort=nearest,limit=1,tag=!w.mode_switched,tag=!disassemble,nbt={Item:{tag:{paveral.wrench:1b,mode:redstone}}}] {Item:{tag:{mode:rail}},Tags:["w.mode_switched"],PickupDelay:0s}
execute as @a at @s unless score @s sneaking matches 1.. run data merge entity @e[type=item,distance=..2,sort=nearest,limit=1,tag=!w.mode_switched,tag=!disassemble,nbt={Item:{tag:{paveral.wrench:1b,mode:rail}}}] {Item:{tag:{mode:iron_trapdoor}},Tags:["w.mode_switched"],PickupDelay:0s}
execute as @a at @s unless score @s sneaking matches 1.. run data merge entity @e[type=item,distance=..2,sort=nearest,limit=1,tag=!w.mode_switched,tag=!disassemble,nbt={Item:{tag:{paveral.wrench:1b,mode:iron_trapdoor}}}] {Item:{tag:{mode:ladder}},Tags:["w.mode_switched"],PickupDelay:0s}
execute as @a at @s unless score @s sneaking matches 1.. run data merge entity @e[type=item,distance=..2,sort=nearest,limit=1,tag=!w.mode_switched,tag=!disassemble,nbt={Item:{tag:{paveral.wrench:1b,mode:ladder}}}] {Item:{tag:{mode:terracotta}},Tags:["w.mode_switched"],PickupDelay:0s}

#Show Mode in Actionbar
execute as @a[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:terracotta}}}] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Mode: ","color":"gray"},{"text":"Terracotta","color":"yellow"},{"text":" ]","color":"gold"}]
execute as @a[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:redstone}}}] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Mode: ","color":"gray"},{"text":"Redstone","color":"yellow"},{"text":" ]","color":"gold"}]
execute as @a[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:rail}}}] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Mode: ","color":"gray"},{"text":"Rail","color":"yellow"},{"text":" ]","color":"gold"}]
execute as @a[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:iron_trapdoor}}}] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Mode: ","color":"gray"},{"text":"Iron Trapdoor","color":"yellow"},{"text":" ]","color":"gold"}]
execute as @a[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:ladder}}}] run title @s actionbar [{"text":"[ ","color":"gold"},{"text":"Mode: ","color":"gray"},{"text":"Ladder","color":"yellow"},{"text":" ]","color":"gold"}]
