function items:lightning_rod/rng/lcg
scoreboard players operation #temp lr.math = out lr.math
scoreboard players operation out lr.math %= #range lr.math
scoreboard players operation #temp lr.math -= out lr.math
scoreboard players operation #temp lr.math += #m1 lr.math
execute if score #temp lr.math matches ..-1 run function items:lightning_rod/rng/zprivate/next_int