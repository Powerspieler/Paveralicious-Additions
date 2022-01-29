scoreboard objectives add AltarValid dummy
scoreboard objectives add AnchorCharged dummy
scoreboard objectives add FormingAnimation dummy

# Advancement
scoreboard objectives add falled_enough dummy

# Spawn Protection
scoreboard objectives add leave_detect minecraft.custom:minecraft.leave_game

scoreboard objectives add aviate_detect minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add boat_detect minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add climb_detect minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add crouch_detect minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add fall_detect minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add fly_detect minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add horse_detect minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add minecart_detect minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add pig_detect minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add sprint_detect minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add strider_detect minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add swim_detect minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walk_owtr_detect minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add walk_detect minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walk_uwtr_detect minecraft.custom:minecraft.walk_under_water_one_cm

scoreboard objectives add spawnp.anim dummy

team add spawnp.ff
team modify spawnp.ff friendlyFire false
team modify spawnp.ff collisionRule pushOwnTeam

scoreboard objectives add paveral.rp.hide trigger {"text":"Hide","color":"green"}
scoreboard objectives add leave_rp.msg minecraft.custom:minecraft.leave_game
