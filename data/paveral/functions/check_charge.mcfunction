## All Charged
execute if block ~2 ~ ~2 minecraft:respawn_anchor[charges=4] if block ~2 ~ ~-2 minecraft:respawn_anchor[charges=4] if block ~-2 ~ ~-2 minecraft:respawn_anchor[charges=4] if block ~-2 ~ ~2 minecraft:respawn_anchor[charges=4] run scoreboard players set @s AnchorCharged 1

## Show Missing Anchors
execute unless block ~2 ~ ~2 minecraft:respawn_anchor[charges=4] run particle minecraft:glow ~2 ~0.5 ~2 0 0 0 1 10
execute unless block ~-2 ~ ~-2 minecraft:respawn_anchor[charges=4] run particle minecraft:glow ~-2 ~0.5 ~-2 0 0 0 1 10
execute unless block ~-2 ~ ~2 minecraft:respawn_anchor[charges=4] run particle minecraft:glow ~-2 ~0.5 ~2 0 0 0 1 10
execute unless block ~2 ~ ~-2 minecraft:respawn_anchor[charges=4] run particle minecraft:glow ~2 ~0.5 ~-2 0 0 0 1 10