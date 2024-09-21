execute if score config freeze_damage matches 1 run gamerule freezeDamage false
execute if score config freeze_damage matches 1 run scoreboard players set config freeze_damage 2

execute if score config freeze_damage matches 0 run gamerule freezeDamage true
execute if score config freeze_damage matches 0 run scoreboard players set config freeze_damage 1

execute if score config freeze_damage matches 2 run scoreboard players set config freeze_damage 0

function hidenseek:damage_config