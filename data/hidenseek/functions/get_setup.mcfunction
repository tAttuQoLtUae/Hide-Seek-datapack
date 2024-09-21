give @s warden_spawn_egg{display:{Name:'{"text":"Set Hider Spawn South","color":"blue","bold":true}',Lore:['{"text":"Sets the spawn of the Hiders(when teleported facing south)"}']},EntityTag:{id:"minecraft:marker",Rotation:[0.0F,0.0F],Tags:["hider_spawn"]}} 1
give @s warden_spawn_egg{display:{Name:'{"text":"Set Hider Spawn West","color":"blue","bold":true}',Lore:['{"text":"Sets the spawn of the Hiders(when teleported facing west)"}']},EntityTag:{id:"minecraft:marker",Rotation:[90.0F,0.0F],Tags:["hider_spawn"]}} 1
give @s warden_spawn_egg{display:{Name:'{"text":"Set Hider Spawn North","color":"blue","bold":true}',Lore:['{"text":"Sets the spawn of the Hiders(when teleported facing north)"}']},EntityTag:{id:"minecraft:marker",Rotation:[180.0F,0.0F],Tags:["hider_spawn"]}} 1
give @s warden_spawn_egg{display:{Name:'{"text":"Set Hider Spawn East","color":"blue","bold":true}',Lore:['{"text":"Sets the spawn of the Hiders(when teleported facing east)"}']},EntityTag:{id:"minecraft:marker",Rotation:[-90.0F,0.0F],Tags:["hider_spawn"]}} 1

give @s mooshroom_spawn_egg{display:{Name:'{"text":"Set Seeker Spawn South","color":"gold","bold":true}',Lore:['{"text":"Sets the spawn of the Seekers(when teleported facing south)"}']},EntityTag:{id:"minecraft:marker",Rotation:[0.0F,0.0F],Tags:["seeker_spawn"]}} 1
give @s mooshroom_spawn_egg{display:{Name:'{"text":"Set Seeker Spawn West","color":"gold","bold":true}',Lore:['{"text":"Sets the spawn of the Seekers(when teleported facing west)"}']},EntityTag:{id:"minecraft:marker",Rotation:[90.0F,0.0F],Tags:["seeker_spawn"]}} 1
give @s mooshroom_spawn_egg{display:{Name:'{"text":"Set Seeker Spawn North","color":"gold","bold":true}',Lore:['{"text":"Setsthe spawn of the Seekers(when teleported facing north)"}']},EntityTag:{id:"minecraft:marker",Rotation:[180.0F,0.0F],Tags:["seeker_spawn"]}} 1
give @s mooshroom_spawn_egg{display:{Name:'{"text":"Set Seeker Spawn East","color":"gold","bold":true}',Lore:['{"text":"Sets the spawn of the Seekers(when teleported facing east)"}']},EntityTag:{id:"minecraft:marker",Rotation:[-90.0F,0.0F],Tags:["seeker_spawn"]}} 1

give @s armor_stand{display:{Name:'{"text":"Set Hider Armorstand","color":"blue","bold":true}',Lore:['[{"text":"Sets an Armor Stand where you can join the Team."}]','{"text":"Players have to go through to get a team."}']},EntityTag:{CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["hider_join"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:5592575}}}],CustomName:'{"text":"Join Hiders","color":"blue","bold":true}'}} 1
give @s armor_stand{display:{Name:'{"text":"Set Seeker Armorstand","color":"gold","bold":true}',Lore:['[{"text":"Sets an Armor Stand where you can join the Team."}]','{"text":"Players have to go through to get a team."}']},EntityTag:{CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["seeker_join"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16755200}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16755200}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16755200}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16755200}}}],CustomName:'{"text":"Join Seekers","color":"gold","bold":true}'}} 1

give @s oak_sign{display:{Name:'{"text":"Set Hider Join Sign","color":"blue","bold":true}',Lore:['{"text":"Click on it to join the Hider team."}']},BlockEntityTag:{front_text:{messages:['[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]','[{"text":"[","color":"blue","clickEvent":{"action":"run_command","value":"/team join Hiders"}},{"text":"Join Hiders","color":"blue"},{"text":"]","color":"blue"}]','{"text":""}','[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]']},is_waxed:1b}} 1
give @s oak_sign{display:{Name:'{"text":"Set Hider Join Sign","color":"gold","bold":true}',Lore:['{"text":"Click on it to join the Seeker team."}']},BlockEntityTag:{front_text:{messages:['[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]','[{"text":"[","color":"gold","clickEvent":{"action":"run_command","value":"/team join Seekers"}},{"text":"Join Seekers","color":"gold"},{"text":"]","color":"gold"}]','{"text":""}','[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]']},is_waxed:1b}} 1
give @s oak_sign{display:{Name:'{"text":"Set Start Sign","color":"green","bold":true}',Lore:['{"text":"Click on it so start the game."}']},BlockEntityTag:{front_text:{messages:['[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]','[{"text":"[","color":"dark_green","clickEvent":{"action":"run_command","value":"/function hidenseek:start"}},{"text":"Start","color":"green"},{"text":"]","color":"dark_green"}]','{"text":""}','[{"text":"[","color":"dark_green"},{"text":"-------------","color":"green"},{"text":"]","color":"dark_green"}]']},is_waxed:1b}} 1

give @s parrot_spawn_egg{display:{Name:'{"text":"Set Info Text (Armor Stand)","color":"green"}',Lore:['{"text":"Sets a info text about playing."}']},EntityTag:{id:"minecraft:text_display",billboard:"vertical",Tags:["info"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'[{"text":"[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\\nHide & Seek","color":"gold"},{"text":"\\n[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\\nHow to play:","color":"white"},{"text":"\\n>Join a Team (Go through Armor Stand)","color":"white"},{"text":"\\n>Click on the Start sign                ","color":"white"},{"text":"\\n>Get Teleported                       ","color":"white"},{"text":"\\n>Hide or Seek                          ","color":"white"},{"text":"\\n>Have Fun                             ","color":"white"},{"text":"\\n"},{"text":"\\n[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"}]'}} 1
give @s parrot_spawn_egg{display:{Name:'{"text":"Set Info Text (Sign)","color":"green"}',Lore:['{"text":"Sets a info text about playing."}']},EntityTag:{id:"minecraft:text_display",billboard:"vertical",Tags:["info"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'[{"text":"[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\\nHide & Seek","color":"gold"},{"text":"\\n[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"},{"text":"\\nHow to play:","color":"white"},{"text":"\\n>Join a Team (Click on the Sign)       ","color":"white"},{"text":"\\n>Click on the Start sign               ","color":"white"},{"text":"\\n>Get Teleported                      ","color":"white"},{"text":"\\n>Hide or Seek                         ","color":"white"},{"text":"\\n>Have Fun                            ","color":"white"},{"text":"\\n"},{"text":"\\n[","color":"dark_green"},{"text":"--------------------------------","color":"green"},{"text":"]","color":"dark_green"}]'}} 1

give @s blaze_spawn_egg{display:{Name:'{"text":"Set Lobby Spawn Hiders","color":"blue","bold":true}',Lore:['{"text":"Sets the spawnpoint of the Hiders in the lobby."}']},EntityTag:{id:"minecraft:marker",Tags:["hider_lobby_spawn"]}} 1
give @s blaze_spawn_egg{display:{Name:'{"text":"Set Lobby Spawn Seekers","color":"gold","bold":true}',Lore:['{"text":"Sets the spawnpoint of the Seekers in the lobby."}']},EntityTag:{id:"minecraft:marker",Tags:["seeker_lobby_spawn"]}} 1

give @s donkey_spawn_egg{display:{Name:'{"text":"Redstone Block on Seeker Start","color":"gold"}'},EntityTag:{id:"minecraft:marker",Tags:["rsoss"]}} 1
give @s donkey_spawn_egg{display:{Name:'{"text":"Redstone Block on Hider Start","color":"blue"}'},EntityTag:{id:"minecraft:marker",Tags:["rsohs"]}} 1
give @s donkey_spawn_egg{display:{Name:'{"text":"Redstone Block on Start","color":"green"}'},EntityTag:{id:"minecraft:marker",Tags:["rsos"]}} 1

give @s mule_spawn_egg{display:{Name:'{"text":"Set Spawnpoint","color":"green"}'},EntityTag:{id:"minecraft:marker",Tags:["spawn"]}} 1