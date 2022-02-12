scoreboard objectives add lr.raycast dummy
scoreboard objectives add lr.dummy dummy
scoreboard objectives add lr.whitecount dummy
scoreboard objectives add lr.math dummy
scoreboard objectives add lr.constant dummy
scoreboard players set in lr.math 1
scoreboard players set in1 lr.math 100
scoreboard players set #2 lr.constant 2
scoreboard players set #1000 lr.constant 1000
scoreboard players set #10000 lr.constant 10000
scoreboard players set #lcg lr.constant 1103515245


scoreboard objectives add lr.cooldown dummy
scoreboard objectives add lr.damage dummy

# Set damage value casted by the lightning_rod
scoreboard players set #value lr.damage 6

#phantom
scoreboard objectives add lr.phantom dummy
scoreboard objectives add lr.paralyze dummy
bossbar add lr.phantom {"text":"Phantom Combo","color":"blue"}
bossbar set minecraft:lr.phantom max 600
bossbar set minecraft:lr.phantom style notched_6
bossbar set minecraft:lr.phantom color yellow
