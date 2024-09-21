bossbar add hidenseek:timer "Time"
bossbar set hidenseek:timer players @a
bossbar set hidenseek:timer visible true
bossbar set hidenseek:timer color blue

execute store result storage hidenseek:config min_to_s int 60 run scoreboard players get Storage hide_time_min
execute store result score Storage hide_time_min_in_s run data get storage hidenseek:config min_to_s 1
execute store result score Storage hide_time run scoreboard players get Storage hide_time_s
scoreboard players operation Storage hide_time += Storage hide_time_min_in_s
execute store result bossbar hidenseek:timer value run scoreboard players get Storage hide_time

execute store result bossbar hidenseek:timer max run scoreboard players get Storage hide_time

scoreboard players set Storage seek_or_hide 1

execute positioned as @e[tag=rsohs] run setblock ~ ~ ~ redstone_block
execute positioned as @e[tag=rsohs] run setblock ~ ~ ~ air

execute if score Storage timer_started matches 1 run function hidenseek:hide_timer