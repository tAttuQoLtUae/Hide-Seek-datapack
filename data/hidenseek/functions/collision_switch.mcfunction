execute if score config collision matches 1 run team modify Hiders collisionRule never
execute if score config collision matches 1 run team modify Seekers collisionRule never
execute if score config collision matches 1 run scoreboard players set config collision 2

execute if score config collision matches 0 run team modify Seekers collisionRule always
execute if score config collision matches 0 run team modify Hiders collisionRule always
execute if score config collision matches 0 run scoreboard players set config collision 1

execute if score config collision matches 2 run scoreboard players set config collision 0

function hidenseek:team_config


