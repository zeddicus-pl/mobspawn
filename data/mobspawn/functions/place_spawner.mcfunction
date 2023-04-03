# @ miejsce wydania komendy

# tworzymy ramkę, od teraz określaną jako "spawner"
summon minecraft:item_frame ~ ~ ~ {Tags:["mobspawner"],Facing:1}

function mobspawn:_register_spawner