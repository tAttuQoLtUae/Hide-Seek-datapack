scoreboard objectives remove hider_left

clear @a diamond_sword{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:255s}]} 1
clear @a diamond_sword{HideFlags:7,Unbreakable:1b} 1
clear @a bow{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:255s},{id:"minecraft:infinity",lvl:1s}]} 1
clear @a bow{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
clear @a arrow
clear @a snowball{display:{Name:'{"text":"Smoke"}'}} 
item replace entity @a[team=Seekers] armor.chest with air 1
effect clear @a
bossbar remove hidenseek:timer
scoreboard players reset Storage hide_time
scoreboard players reset Storage hide_time_min_in_s
scoreboard players reset Storage seek_time_min_in_s
scoreboard players reset Storage seek_time
scoreboard players set Storage started 0
scoreboard players set Storage timer_started 0

teleport @a[team=Hiders] @e[tag=hider_lobby_spawn,limit=1]
teleport @a[team=Seekers] @e[tag=seeker_lobby_spawn,limit=1]
team empty Hiders
team empty Seekers
gamemode adventure @a
execute as @a[scores={crea=1}] run gamemode creative @s
scoreboard objectives remove crea
execute as @a[gamemode=creative] run function hidenseek:menu

