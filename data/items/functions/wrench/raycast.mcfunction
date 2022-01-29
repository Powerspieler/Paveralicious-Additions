scoreboard players remove @s w.range 1

execute positioned ^ ^ ^ unless block ^ ^ ^ #items:raycast.passable if entity @s[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:terracotta}}}] run function items:wrench/blockstates/terracotta
execute positioned ^ ^ ^ unless block ^ ^ ^ #items:raycast.passable if entity @s[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:redstone}}}] run function items:wrench/blockstates/redstone
execute positioned ^ ^ ^ unless block ^ ^ ^ #items:raycast.passable if entity @s[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:rail}}}] run function items:wrench/blockstates/rail
execute positioned ^ ^ ^ unless block ^ ^ ^ #items:raycast.passable if entity @s[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:iron_trapdoor}}}] run function items:wrench/blockstates/iron_trapdoor
execute positioned ^ ^ ^ unless block ^ ^ ^ #items:raycast.passable if entity @s[nbt={SelectedItem:{tag:{paveral.wrench:1b,mode:ladder}}}] run function items:wrench/blockstates/pre_ladder

execute if block ^ ^ ^ #items:raycast.passable positioned ^ ^ ^0.1 if score @s w.range matches 1.. run function items:wrench/raycast
