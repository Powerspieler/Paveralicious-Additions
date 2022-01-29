function items:lightning_rod/rng/range
scoreboard players remove %whitecount lr.dummy 1
execute if score out lr.math matches 1..20 rotated ~14 ~-8 run function items:lightning_rod/lightning/joint
execute if score out lr.math matches 21..40 rotated ~-17 ~-9 run function items:lightning_rod/lightning/joint
execute if score out lr.math matches 41..60 rotated ~ ~12 run function items:lightning_rod/lightning/joint
execute if score out lr.math matches 61..80 rotated ~-12 ~10 run function items:lightning_rod/lightning/joint
execute if score out lr.math matches 81..100 rotated ~16 ~-11 run function items:lightning_rod/lightning/joint