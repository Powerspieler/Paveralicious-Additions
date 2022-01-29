scoreboard players add in1 lr.math 1
scoreboard players operation #range lr.math = in1 lr.math
scoreboard players operation #range lr.math -= in lr.math

scoreboard players operation #m1 lr.math = #range lr.math
scoreboard players remove #m1 lr.math 1
function items:lightning_rod/rng/zprivate/next_int
scoreboard players operation out lr.math += in lr.math

scoreboard players reset #m1 lr.math
scoreboard players remove in1 lr.math 1