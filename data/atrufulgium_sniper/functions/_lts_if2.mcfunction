#For use within any loopthroughselection.
execute store result entity @s Pos[2] double 1 run scoreboard players add @s posz 1
scoreboard players operation @s posy = @e[scores={caller=1},limit=1] selectionbox_y1
execute store result entity @s Pos[1] double 1 run scoreboard players get @s posy

execute if score @s posz >= @e[scores={caller=1},limit=1] selectionbox_z2 run kill @s