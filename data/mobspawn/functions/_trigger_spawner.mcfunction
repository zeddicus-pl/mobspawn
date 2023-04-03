# @ koordynaty spawnera

# ustawiamy shouldSpawn
data modify storage minecraft:mobspawn shouldSpawn set value 1b

# usun shouldSpawn jesli w okolicy 50 blokow nie ma mobka "przypisanego" juz do tego spawnera
execute at @e[tag=mobspawner,sort=nearest,limit=1] as @e[sort=nearest,distance=..50,tag=spawnedmob] if score @s mobSpawnMobId = @e[tag=mobspawner,sort=nearest,limit=1] mobSpawnMobId run data modify storage minecraft:mobspawn shouldSpawn set value 0b

# jesli shouldSpawn to odpalamy funkcje ktora spawnuje mobka
execute if data storage minecraft:mobspawn {shouldSpawn: 1b} run function mobspawn:_spawn_mob
