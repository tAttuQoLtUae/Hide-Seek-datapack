


execute if score Storage hide_time matches 0.. run scoreboard players remove Storage hide_time 1
execute if score Storage hide_time matches 0.. store result bossbar hidenseek:timer value run scoreboard players get Storage hide_time


scoreboard objectives add i dummy
scoreboard players set Storage i 60
scoreboard objectives add min dummy
scoreboard objectives add s dummy
scoreboard players operation Storage min = Storage hide_time
scoreboard players operation Storage s = Storage hide_time
scoreboard players operation Storage min /= Storage i
scoreboard players operation Storage s %= Storage i

execute if score Storage min matches ..9 if score Storage s matches ..9 run bossbar set hidenseek:timer name ["",{"text":"Time To Hide: "},{"text":"[","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches 10.. if score Storage s matches 10.. run bossbar set hidenseek:timer name ["",{"text":"Time To Hide: "},{"text":"[","color":"gray"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches 10.. if score Storage s matches ..9 run bossbar set hidenseek:timer name ["",{"text":"Time To Hide: "},{"text":"[","color":"gray"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]
execute if score Storage min matches ..9 if score Storage s matches 10.. run bossbar set hidenseek:timer name ["",{"text":"Time To Hide: "},{"text":"[","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"Storage","objective":"min"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"Storage","objective":"s"},"color":"white"},{"text":"]","color":"gray"}]

scoreboard objectives remove i
scoreboard objectives remove min
scoreboard objectives remove s

execute if score Storage timer_started matches 1 if score Storage hide_time matches 0 run function hidenseek:seek_timer_init

execute if score Storage timer_started matches 1 if score Storage hide_time matches 1.. run schedule function hidenseek:hide_timer 1s replace