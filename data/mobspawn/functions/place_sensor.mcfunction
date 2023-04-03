# @ miejsce wydania komendy

setblock ~ ~ ~ minecraft:sculk_sensor[waterlogged=true]
setblock ~ ~ ~1 minecraft:rail
setblock ~ ~ ~-1 minecraft:rail
setblock ~1 ~ ~ minecraft:rail
setblock ~-1 ~ ~ minecraft:rail
setblock ~ ~-1 ~ minecraft:command_block{Command:"/execute positioned ~ ~ ~ run function mobspawn:_trigger_sensor"} replace
