# @ koordynaty spawnera

# zombie
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run summon zombie ~ ~ ~

# szkielet
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:skeleton_spawn_egg"}}] run summon skeleton ~ ~ ~

# husk
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:husk_spawn_egg"}}] run summon husk ~ ~ ~

# d2_corpse_fire
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:redstone_block"}}] run function rpgloot:summon/d2_corpse_fire

# d2_corpse_fire_minion
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:redstone"}}] run function rpgloot:summon/d2_corpse_fire_minion

# d2_diablik
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:torch"}}] run function rpgloot:summon/d2_diablik

# d2_monstrualna_bestia
execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:cauldron"}}] run function rpgloot:summon/d2_monstrualna_bestia

# by dodać więcej, po prostu zamien <przedmiot> na to co chcesz umieszczać w ramcę
# oraz <komenda> na komendę spawnującą mobka. Mobek musi spawnować się **pojedyńczy** i w lokacji ~ ~ ~ 
#
# execute if entity @e[sort=nearest,limit=1,tag=mobspawner,distance=..0.4] if entity @s[nbt={Item:{id:"minecraft:<przedmiot>"}}] run <komenda>
#

# nie usuwać - to musi być na końcu
function mobspawn:_register_mob