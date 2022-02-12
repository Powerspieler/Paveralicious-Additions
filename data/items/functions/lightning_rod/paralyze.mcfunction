data merge entity @s {DeathLootTable:"items:empty",Silent:1b}
particle poof ~ ~ ~ 0 0 0 .1 25
execute as @a[scores={lr.paralyze=1..},distance=..11] run playsound minecraft:block.conduit.attack.target master @s
teleport ~ -96 ~
kill @s
