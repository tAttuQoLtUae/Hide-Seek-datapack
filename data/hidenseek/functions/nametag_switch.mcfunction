execute if score config nametag matches 1 run team modify Seekers nametagVisibility hideForOtherTeams
execute if score config nametag matches 1 run team modify Hiders nametagVisibility hideForOtherTeams
execute if score config nametag matches 1 run scoreboard players set config nametag 2

execute if score config nametag matches 0 run team modify Seekers nametagVisibility always
execute if score config nametag matches 0 run team modify Hiders nametagVisibility always
execute if score config nametag matches 0 run scoreboard players set config nametag 1

execute if score config nametag matches 2 run scoreboard players set config nametag 0

function hidenseek:team_config


