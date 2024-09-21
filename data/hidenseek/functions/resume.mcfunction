scoreboard players set Storage timer_started 1
execute if score Storage timer_started matches 1 run function hidenseek:play

execute if score Storage seek_or_hide matches 1 run function hidenseek:hide_timer
execute if score Storage seek_or_hide matches 2 run function hidenseek:seek_timer