team add Hiders
team add Seekers
team modify Hiders color blue
team modify Seekers color gold
execute if score config nametag matches 0 run team modify Hiders nametagVisibility hideForOtherTeams
execute if score config nametag matches 0 run team modify Seekers nametagVisibility hideForOtherTeams
execute if score config nametag matches 1 run team modify Seekers nametagVisibility always
execute if score config nametag matches 1 run team modify Hiders nametagVisibility always

execute if score config collision matches 0 run team modify Seekers collisionRule never
execute if score config collision matches 1 run team modify Seekers collisionRule always
execute if score config collision matches 0 run team modify Hiders collisionRule never
execute if score config collision matches 1 run team modify Hiders collisionRule always