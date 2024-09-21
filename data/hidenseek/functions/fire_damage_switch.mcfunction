execute if score config fire_damage matches 1 run gamerule fireDamage false
execute if score config fire_damage matches 1 run scoreboard players set config fire_damage 2

execute if score config fire_damage matches 0 run gamerule fireDamage true
execute if score config fire_damage matches 0 run scoreboard players set config fire_damage 1

execute if score config fire_damage matches 2 run scoreboard players set config fire_damage 0

function hidenseek:damage_config