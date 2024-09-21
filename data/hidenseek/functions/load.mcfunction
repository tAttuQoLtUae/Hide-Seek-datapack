
function hidenseek:setup_init
function hidenseek:team_setup
scoreboard objectives add s_timer dummy
scoreboard objectives add important dummy

scoreboard objectives add config_init dummy
execute unless score Storage config_init matches 1 run scoreboard players set Storage config_init 0
execute unless score Storage config_init matches 1 run function hidenseek:config_init
tellraw @a {"text":"Reloaded \"Hide & Seek\""}
execute as @a[gamemode=creative] run function hidenseek:menu
