
bossbar add hidenseek:timer "Time"
bossbar set hidenseek:timer players @a
bossbar set hidenseek:timer visible true
bossbar set hidenseek:timer color yellow

execute store result storage hidenseek:config min_to_s int 60 run scoreboard players get Storage seek_time_min
execute store result score Storage seek_time_min_in_s run data get storage hidenseek:config min_to_s 1
execute store result score Storage seek_time run scoreboard players get Storage seek_time_s
scoreboard players operation Storage seek_time += Storage seek_time_min_in_s
execute store result bossbar hidenseek:timer value run scoreboard players get Storage seek_time

execute store result bossbar hidenseek:timer max run scoreboard players get Storage seek_time

scoreboard players set Storage seek_or_hide 2

execute positioned as @e[tag=rsoss] run setblock ~ ~ ~ redstone_block
execute positioned as @e[tag=rsoss] run setblock ~ ~ ~ air
execute if score Storage timer_started matches 1 run function hidenseek:seek_timer