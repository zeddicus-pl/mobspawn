# @ koordynaty spawnera

# sprawdzamy czy minął timeout ponownego odpalenia, jesli tak to odpalamy spawner
execute unless entity @e[tag=mobspawntimeout,distance=..0.4] run function mobspawn:_trigger_spawner

# robimy chmurkę i długości trwania zależnej od rotacji itemu w ramce spawnera

# czyścimy chmurkę
kill @e[tag=mobspawntimeout,distance=..0.4]

# rotacja 0 - 1 minuta
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:0b}] run summon area_effect_cloud ~ ~ ~ {Duration: 1200, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 1 - 5 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:1b}] run summon area_effect_cloud ~ ~ ~ {Duration: 6000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 2 - 10 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:2b}] run summon area_effect_cloud ~ ~ ~ {Duration: 12000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 3 - 15 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:3b}] run summon area_effect_cloud ~ ~ ~ {Duration: 18000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 4 - 20 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:4b}] run summon area_effect_cloud ~ ~ ~ {Duration: 24000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 5 - 30 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:5b}] run summon area_effect_cloud ~ ~ ~ {Duration: 36000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 6 - 45 minut
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:6b}] run summon area_effect_cloud ~ ~ ~ {Duration: 54000, Radius:0, Tags:["mobspawntimeout"]}
# rotacja 7 - 1 godzina
execute if entity @e[tag=mobspawner,distance=..0.4,nbt={ItemRotation:7b}] run summon area_effect_cloud ~ ~ ~ {Duration: 72000, Radius:0, Tags:["mobspawntimeout"]}
