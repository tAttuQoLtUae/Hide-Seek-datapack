
execute if score Storage seek_time matches 0.. run scoreboard players remove Storage seek_time 1
execute if score Storage seek_time matches 0.. store result bossbar hidenseek:timer value run scoreboard players get Storage seek_time

scoreboard objectives add i dummy
scoreboard players set Storage i 60
scoreboard objectives add min dummy
scoreboard objectives add s dummy
scoreboard players operation Storage min = Storage seek_time
scoreboard players operation Storage s = Storage seek_time
scoreboard players operation Storage min /= Storage i
scoreboard players operation Storage s %= Storage i

execute if score Storage min matches ..9 if score Storage s matches ..9 run bossbar set hidenseek:timer name ["",{"text":"Time To Seek: "},{"text":"[","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches 10.. if score Storage s matches 10.. run bossbar set hidenseek:timer name ["",{"text":"Time To Seek: "},{"text":"[","color":"gray"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches 10.. if score Storage s matches ..9 run bossbar set hidenseek:timer name ["",{"text":"Time To Seek: "},{"text":"[","color":"gray"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches ..9 if score Storage s matches 10.. run bossbar set hidenseek:timer name ["",{"text":"Time To Seek: "},{"text":"[","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]

scoreboard objectives remove i
scoreboard objectives remove min
scoreboard objectives remove s

execute if score Storage seek_time matches 0 run scoreboard players set Storage seek_or_hide 0

execute if score Storage seek_time matches 0 if score Storage hider_left matches 1.. run title @a[team=Seekers] times 20 100 20
execute if score Storage seek_time matches 0 if score Storage hider_left matches 1.. run title @a[team=Seekers] subtitle {"text":"Hiders Won!","color":"blue"}
execute if score Storage seek_time matches 0 if score Storage hider_left matches 1.. run title @a[team=Seekers] title {"text":"You Suck!","color":"dark_red"}

execute if score Storage seek_time matches 0 run title @a[team=Hiders] times 20 100 20
execute if score Storage seek_time matches 0 run title @a[team=Hiders] title {"text":"You Win!","color":"gold"}
execute if score Storage seek_time matches 0 run function hidenseek:reset

execute if score Storage seek_time matches 0 run scoreboard players set Storage started 0
execute if score Storage seek_time matches 0 run scoreboard players set Storage timer_started 0



execute if score Storage timer_started matches 1 if score Storage seek_time matches 1.. run schedule function hidenseek:seek_timer 1s 