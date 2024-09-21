execute if score config drowning_damage matches 1 run gamerule drowningDamage false
execute if score config drowning_damage matches 1 run scoreboard players set config drowning_damage 2

execute if score config drowning_damage matches 0 run gamerule drowningDamage true
execute if score config drowning_damage matches 0 run scoreboard players set config drowning_damage 1

execute if score config drowning_damage matches 2 run scoreboard players set config drowning_damage 0

function hidenseek:damage_config