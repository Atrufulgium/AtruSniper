#Works on anything but players because we still aren't allowed to modify player nbt. Killjoys :(
#Assumes the thing that needs to loop is already within the selection, and everything "before" has already been done.
execute as @s at @s unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute if score @s posx < @e[scores={caller=1},limit=1] selectionbox_x2 store result entity @s Pos[0] double 1 run scoreboard players add @s posx 1
execute if score @s posx >= @e[scores={caller=1},limit=1] selectionbox_x2 at @s run function atrufulgium_sniper:_lts_if1
execute if score @s posz < @e[scores={caller=1},limit=1] selectionbox_z2 at @s run function atrufulgium_sniper:tools/clear/loopthroughselection