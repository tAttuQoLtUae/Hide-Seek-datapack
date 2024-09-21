bossbar remove hidenseek:timer
scoreboard objectives remove hide_time
scoreboard objectives remove hide_time_min_in_s
scoreboard objectives remove seek_time_min_in_s
scoreboard objectives remove seek_time
scoreboard objectives remove started
scoreboard players set Storage config_init 0
scoreboard objectives remove important
scoreboard objectives remove seek_or_hide
scoreboard objectives remove timer_started
scoreboard objectives remove op
function hidenseek:load
tellraw @s {"text":"Successfully reseted.","color":"red"}