execute as @a unless score @s important matches 1 run scoreboard players set @s important 0
execute as @a[gamemode=creative,scores={important=0}] run tellraw @s ["",{"text":"\n"},{"text":"[","color":"dark_green"},{"text":"-----------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\n"},{"text":"Important!","color":"red"},{"text":"\n"},{"text":"[","color":"dark_green"},{"text":"-----------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\nThis message is shown to all players in creative mode after loading.\nThe Hide & Seek menu is shown after reloading.\n Alternatively type: \""},{"text":"/function hidenseek:menu","color":"red","clickEvent":{"action":"suggest_command","value":"/function hidenseek:menu"},"hoverEvent":{"action":"show_text","contents":"Click to try."}},{"text":"\" as an operator.\nTo use the menus, open the chat and click on the highlighted text: "},{"text":"[","color":"dark_green","clickEvent":{"action":"run_command","value":"/function hidenseek:menu"},"hoverEvent":{"action":"show_text","contents":"Click."}},{"text":"Menu","color":"green","clickEvent":{"action":"run_command","value":"/function hidenseek:menu"},"hoverEvent":{"action":"show_text","contents":"Click."}},{"text":"]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function hidenseek:menu"},"hoverEvent":{"action":"show_text","contents":"Click."}},{"text":".","color":"white"},{"text":"\nThis message is shown only once per player!\n"},{"text":"[","color":"dark_green"},{"text":"-----------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\n\n "}]
execute as @a[gamemode=creative,scores={important=0}] run scoreboard players set @s important 1

execute as @e[type=snowball] run function hidenseek:smoke
execute as @e[type=marker,tag=smoke] run function hidenseek:smoke

execute if score Storage started matches 0 run effect give @a resistance 5 4 true
function hidenseek:end

execute as @a at @e[tag=spawn] run spawnpoint @s ~ ~ ~


execute at @e[type=armor_stand,tag=hider_join] run team join Hiders @a[distance=..1] 
execute at @e[tag=seeker_join] run team join Seekers @a[distance=..1] 
