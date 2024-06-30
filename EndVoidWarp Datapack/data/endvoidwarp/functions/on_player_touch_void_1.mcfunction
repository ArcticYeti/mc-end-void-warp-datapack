scoreboard players set @s EndVoidWarp 1

# (x, z) = (player.position[0], player.position[2])
execute store result score .x EndVoidWarp run data get entity @s Pos[0]
execute store result score .z EndVoidWarp run data get entity @s Pos[2]

# val = abs(x) + abs(z)
execute if score .x EndVoidWarp matches ..-1 run scoreboard players operation .x EndVoidWarp *= #-1 EndVoidWarp
execute if score .z EndVoidWarp matches ..-1 run scoreboard players operation .z EndVoidWarp *= #-1 EndVoidWarp
scoreboard players operation .val EndVoidWarp = .x EndVoidWarp
scoreboard players operation .val EndVoidWarp += .z EndVoidWarp

# (val_max, val_min) = (val, -val)
execute store result storage endvoidwarp:temp temp.val_max int 1 run scoreboard players get .val EndVoidWarp
scoreboard players operation .val EndVoidWarp *= #-1 EndVoidWarp
execute store result storage endvoidwarp:temp temp.val_min int 1 run scoreboard players get .val EndVoidWarp

# player.position[0] = rand_range(val_min, val_max)
# player.position[2] = rand_range(val_min, val_max)
function endvoidwarp:on_player_touch_void_1/randomize_coords with storage endvoidwarp:temp temp
function endvoidwarp:on_player_touch_void_1/tp_to_overworld with storage endvoidwarp:temp res

effect give @s minecraft:darkness 2 1 true