advancement revoke @s only endvoidwarp:on_player_warp_finished

tag @s remove EndVoidWarp.DimStarted
scoreboard players reset @s EndVoidWarp
title @s times 0t 30t 100t
title @s title {"text": "\uE000"}
effect clear @s minecraft:darkness