execute as @e[scores={interest=1..2}] store result entity @s Pos[1] double 1 run scoreboard players add @s posy 8
execute as @e[scores={interest=1..2}] store result entity @s Pos[0] double 1 run scoreboard players operation @s posx = @s selectionbox_x1

execute if score @s posy >= @s selection_y2 if score @s posy < @s selectionbox_y2 store result entity @s Pos[1] double 1 run scoreboard players operation @s posy = @s selection_y2

execute if score @s posy >= @s selectionbox_y2 at @s run function atrufulgium_sniper:tools/clone/largeclone/_ltsc_if2