advancement revoke @s only endvoidwarp:end_player_tick

execute if entity @s[y=-200, dy=185, tag=!EndVoidWarp.DimStarted] run function endvoidwarp:on_player_touch_void_0
execute if entity @s[y=-200, dy=150] run function endvoidwarp:on_player_touch_void_1

execute if entity @s[y=0, dy=300, tag=EndVoidWarp.DimStarted] run function endvoidwarp:on_player_warp_cancelled