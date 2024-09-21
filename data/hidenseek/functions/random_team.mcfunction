execute as @a[scores={seeker=1}] run scoreboard players add config seeker 1

execute as @a[limit=1,sort=random] unless score @s seeker matches 1 unless score config seeker = config seeker_max run scoreboard players add @s seeker 1
execute if score config seeker = config seeker_max run team join Seekers @a[scores={seeker=1}]
execute as @a unless score @s seeker matches 1 if score config seeker = config seeker_max run team join Hiders @s

execute unless score config seeker = config seeker_max run function hidenseek:random_team
execute if score config seeker = config seeker_max run scoreboard players reset @a seeker
scoreboard players reset config seeker

