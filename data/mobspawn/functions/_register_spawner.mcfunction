# @ koordynaty spawnera

# zapisujemy ID najblizszej ramki w tymczasowym miejscu
execute as @e[sort=nearest,limit=1,tag=mobspawner] store result score @e[limit=1] mobSpawnMobId run data get entity @s UUID[0]

# dodajemy ramce scoreboard z tym ID, uzyjemy pozniej tego scoreboardu zeby sprawdzac
# czy istnieje na planszy mobek o takim samym ID
scoreboard players operation @e[sort=nearest,limit=1,tag=mobspawner] mobSpawnMobId = @e[limit=1] mobSpawnMobId

# usuwamy scoreboard z tymczasowego entity
scoreboard players reset @e[limit=1] mobSpawnMobId