# @ koordynaty command blocka pod sensorem

# ta funkcja jest odpalona kiedy command block pod skulkiem się odpalił

# znajduje wszystkie "spawnery" w promieniu między 20 do 50 bloków od siebie, i odpala je
# dodatkowo sprawdza czy przynajmniej 10 blokow na okolo jest user, jako zabezpiecznie
# przed odpaleniem przez moby
execute if entity @a[distance=..10] run execute as @e[tag=mobspawner,distance=20..50] at @s run function mobspawn:_trigger_spawner_timeout_check