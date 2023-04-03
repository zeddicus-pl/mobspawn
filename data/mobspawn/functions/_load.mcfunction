# scoreboard uzywany to przechowywania ID mobka w mobku i spawnerze, tak że spawner może
# zidentyfikować "swojego" mobka
scoreboard objectives add mobSpawnMobId dummy

# robocza zmienna globalna uzywana przy wyszukiwaniu mobków
data merge storage mobspawn {shouldSpawn: 0b}

# resetowanie scoreboardow
scoreboard players reset @e mobSpawnMobId

# odtwarzanie scoreboardow dla istniejacych w swiecie spawnerow
execute at @e[tag=mobspawner] run function mobspawn:_register_spawner

# zabijamy mobki wcześniej stworzone przez ten datapack
# inaczej będą biegały nie "podłączone" do spawnerów
kill @e[tag=spawnedmob]

# czyscimy ewentualne chmurki timeoutów
kill @e[tag=mobspawntimeout]