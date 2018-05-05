#For use within any loopthroughselection.
execute store result entity @s Pos[1] double 1 run scoreboard players add @s posy 1
scoreboard players operation @s posx = @e[scores={caller=1},limit=1] selectionbox_x1
execute store result entity @s Pos[0] double 1 run scoreboard players get @s posx

execute if score @s posy >= @e[scores={caller=1},limit=1] selectionbox_y2 at @s run function atrufulgium_sniper:_lts_if2