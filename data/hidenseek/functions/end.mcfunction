execute as @a unless score @s death matches 0..1 run scoreboard players set @s death 0

execute as @a[scores={death=1},team=Hiders] if score config spectator matches 1 if score Storage started matches 1 run gamemode spectator @s
execute as @a[scores={death=1},team=Hiders] if score config spectator matches 1 if score Storage started matches 1 run tp @s @p[team=Seekers]
execute as @a[scores={death=1},team=Hiders] if score config spectator matches 0 if score Storage started matches 1 run tp @s @e[tag=hider_lobby_spawn,limit=1]
execute as @a[scores={death=1},team=Hiders] run scoreboard players remove Storage hider_left 1
execute as @a if score @s death matches 1 run scoreboard players set @s death 0

execute if score Storage hider_left matches 0 run title @a[team=Hiders] times 20 100 20
execute if score Storage hider_left matches 0 run title @a[team=Hiders] title {"text":"You Suck!","color":"dark_red"}
execute as @a[team=Seekers] run scoreboard players add Storage seeker_max 1
execute if score Storage hider_left matches 0 if score Storage seeker_max matches 1 run title @a[team=Hiders] subtitle {"text":"Seeker Won!","color":"gold"}
execute if score Storage hider_left matches 0 if score Storage seeker_max matches 2.. run title @a[team=Hiders] subtitle {"text":"Seekers Won!","color":"gold"}

scoreboard players reset Storage seeker_max
execute if score Storage hider_left matches 0 run title @a[team=Seekers] times 20 100 20
execute if score Storage hider_left matches 0 run title @a[team=Seekers] title {"text":"You Win!","color":"gold"}

execute if score Storage hider_left matches 0 run scoreboard players set Storage started 0 
execute if score Storage hider_left matches 0 run scoreboard players set Storage timer_started 0




execute if score Storage hider_left matches 0 run function hidenseek:reset
