execute unless entity @e[tag=disassemble,distance=..3] run function paveral:disassembling_table/check_dis_table_ns
execute unless entity @e[tag=disassemble,distance=..3] run function paveral:disassembling_table/check_dis_table_we
execute if score @s DisTableValid matches 1.. run function paveral:disassembling_table/check_lever
execute if score @s DisTableLevered matches 1.. run function paveral:disassembling_table/disassemble_process

execute if score @s DisTableAnim matches 199 run loot spawn ~ ~ ~ loot paveral:disassemble/bonk
