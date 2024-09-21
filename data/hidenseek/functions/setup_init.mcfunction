gamerule doImmediateRespawn true

execute if score config fall_damage matches 0 run gamerule fallDamage false
execute if score config fire_damage matches 0 run gamerule fireDamage false
execute if score config freeze_damage matches 0 run gamerule freezeDamage false
execute if score config drowning_damage matches 0 run gamerule drowningDamage false

execute if score config fall_damage matches 1 run gamerule fallDamage true
execute if score config fire_damage matches 1 run gamerule fireDamage true
execute if score config freeze_damage matches 1 run gamerule freezeDamage true
execute if score config drowning_damage matches 1 run gamerule drowningDamage true

gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false

gamerule keepInventory true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule disableRaids true
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doWardenSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doTileDrops false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
gamerule logAdminCommands false
gamerule sendCommandFeedback true
gamerule showDeathMessages false
