execute if score config fall_damage matches 1 run gamerule fallDamage false
execute if score config fall_damage matches 1 run scoreboard players set config fall_damage 2

execute if score config fall_damage matches 0 run gamerule fallDamage true
execute if score config fall_damage matches 0 run scoreboard players set config fall_damage 1

execute if score config fall_damage matches 2 run scoreboard players set config fall_damage 0

function hidenseek:damage_config