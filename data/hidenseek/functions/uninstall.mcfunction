bossbar remove hidenseek:timer
scoreboard objectives remove hide_time
scoreboard objectives remove hide_time_min_in_s
scoreboard objectives remove seek_time_min_in_s
scoreboard objectives remove seek_time
scoreboard objectives remove hide_time_min
scoreboard objectives remove hide_time_s
scoreboard objectives remove seek_time_min
scoreboard objectives remove seek_time_s
scoreboard objectives remove timer_started
scoreboard objectives remove s_timer
scoreboard objectives remove seek_or_hide
scoreboard objectives remove statue_id
scoreboard objectives remove statue_ro
scoreboard objectives remove statue_tmp
scoreboard objectives remove statue_tmp
scoreboard objectives remove statue_x
scoreboard objectives remove statue_x_head
scoreboard objectives remove statue_x_la
scoreboard objectives remove statue_x_ll
scoreboard objectives remove statue_x_ra
scoreboard objectives remove statue_x_rl
scoreboard objectives remove statue_y
scoreboard objectives remove statue_y_head
scoreboard objectives remove statue_y_la
scoreboard objectives remove statue_y_ll
scoreboard objectives remove statue_y_ra
scoreboard objectives remove statue_y_rl
scoreboard objectives remove statue_z
scoreboard objectives remove statue_z_head
scoreboard objectives remove statue_z_la
scoreboard objectives remove statue_z_ll
scoreboard objectives remove statue_z_ra
scoreboard objectives remove statue_z_rl
scoreboard objectives remove started
scoreboard objectives remove config_init
scoreboard objectives remove important
scoreboard objectives remove nametag
scoreboard objectives remove collision
scoreboard objectives remove op
scoreboard objectives remove seeker
scoreboard objectives remove seeker_max
scoreboard objectives remove fire_damage
scoreboard objectives remove fall_damage
scoreboard objectives remove freeze_damage
scoreboard objectives remove drowning_damage
scoreboard objectives remove smokes
scoreboard objectives remove random

team remove Hiders
team remove Seekers
kill @e[tag=hider_spawn]
kill @e[tag=seeker_spawn]
kill @e[tag=seeker_join]
kill @e[tag=hider_join]
kill @e[tag=hider_lobby_spawn]
kill @e[tag=seeker_lobby_spawn]
kill @e[tag=info]
kill @e[tag=rsos]
kill @e[tag=rsoss]
kill @e[tag=rsohs]

execute as @e[tag=statue,tag=main] at @s run kill @e[tag=statue,distance=..2,limit=33,sort=nearest]