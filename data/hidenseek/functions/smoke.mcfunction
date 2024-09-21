execute as @e[type=snowball] at @s unless entity @e[type=marker,limit=1,sort=nearest,tag=smoke,distance=..2] run summon marker ~ ~ ~ {Tags:["smoke"]} 
execute as @e[type=snowball] at @s run tp @e[type=marker,sort=nearest,limit=1,tag=smoke,distance=..2] ~ ~ ~
execute as @e[type=marker,tag=smoke] at @s unless entity @e[type=minecraft:snowball,distance=..1] if block ~ ~-1 ~ air run tp @s ~ ~-0.05 ~
execute as @e[type=marker,tag=smoke] at @s unless entity @e[type=minecraft:snowball,distance=..1] run function hidenseek:stimer
execute as @e[type=marker,tag=smoke] at @s unless entity @e[type=minecraft:snowball,distance=..1] run particle campfire_cosy_smoke ~ ~ ~ 2 1 2 0 100 force


 