execute if entity @p[tag=sf.victim,distance=..2] run function items:sheepfreeze/transform_back_player
execute unless entity @p[tag=sf.victim,distance=..2] run function items:sheepfreeze/transform_back_entity
