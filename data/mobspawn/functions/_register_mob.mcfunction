# @ koordynaty spawnera

# tymczasowo zapisujemy ID najblizszego spawnera do score pierwszego z brzegu entity
execute as @e[sort=nearest,limit=1,tag=mobspawner] store result score @e[limit=1] mobSpawnMobId run data get entity @s UUID[0]

# dodajemy mobkowi, w tej samej lokacji co spawner, scoreboard z tym ID
scoreboard players operation @e[distance=..0.4,tag=!mobspawner] mobSpawnMobId = @e[limit=1] mobSpawnMobId

# ustawiamy mobkowi docelowy tag
data merge entity @e[distance=..0.4,limit=1,tag=!mobspawner] {Tags:["spawnedmob"]}

# teleportujemy 3 klocki w górę
teleport @e[tag=!mobspawner,distance=..0.4] ~ ~3 ~

# usuwamy scoreboard z tymczasowego entity
scoreboard players reset @e[limit=1] mobSpawnMobId