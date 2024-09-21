scoreboard objectives add crea dummy
execute as @a[gamemode=creative] run scoreboard players set @s crea 1

execute if score config random matches 1 run function hidenseek:random_team

scoreboard objectives add hider_left dummy
scoreboard players set Storage hider_left 0
execute as @a[team=Hiders] run scoreboard players add Storage hider_left 1

execute positioned as @e[tag=rsos] run setblock ~ ~ ~ redstone_block
execute positioned as @e[tag=rsos] run setblock ~ ~ ~ air

execute unless score Storage started matches 1 run teleport @a[team=Hiders] @e[tag=hider_spawn,limit=1]
execute unless score Storage started matches 1 run teleport @a[team=Seekers] @e[tag=seeker_spawn,limit=1]
execute unless score Storage started matches 1 run gamemode adventure @a[team=Seekers]
execute unless score Storage started matches 1 run gamemode adventure @a[team=Hiders]

effect give @a[team=Seekers] resistance infinite 4 true
execute if score config speed matches 1 run effect give @a[team=Seekers] speed infinite 0 true

execute if score config sword matches 1 if score config oh_sword matches 1 run give @a[team=Seekers] diamond_sword{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:255s}]} 1
execute if score config sword matches 1 if score config oh_sword matches 0 run give @a[team=Seekers] diamond_sword{HideFlags:7,Unbreakable:1b} 1

execute if score config bow matches 1 if score config oh_bow matches 1 run give @a[team=Seekers] bow{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:255s},{id:"minecraft:infinity",lvl:1s}]} 1
execute if score config bow matches 1 if score config oh_bow matches 0 run give @a[team=Seekers] bow{HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
execute if score config bow matches 1 run give @a[team=Seekers] arrow 1

execute if score config smokes matches 1 run give @a[team=Hiders] snowball{display:{Name:'{"text":"Smoke"}'}} 1

execute as @a[team=Seekers] run item replace entity @s armor.chest with leather_chestplate{display:{color:16755200},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s,},{id:"minecraft:protection",lvl:255s},{id:"minecraft:projectile_protection",lvl:255s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:32767,Operation:0,UUID:[I;-1991237057,2100446179,-1559557964,934531290],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:32767,Operation:0,UUID:[I;-466586401,-504673765,-1571392510,1512785933],Slot:"chest"}]} 1
scoreboard players set Storage timer_started 1
execute if score Storage started matches 0 run function hidenseek:hide_timer_init
scoreboard players set Storage started 1
execute if score Storage started matches 1 run function hidenseek:play

