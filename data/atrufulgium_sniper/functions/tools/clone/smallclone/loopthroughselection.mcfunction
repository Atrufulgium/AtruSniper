#Use the fact that the selection sizes for the clone area and the cloned area are the same.
execute as @s at @s run clone ~ ~ ~ ~ ~ ~ 0 0 0 replace force
execute as @e[scores={interest=2}] at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force
#execute if score @e[scores={caller=1},limit=1] activefunction matches 4 unless block 0 0 0 minecraft:air as @e[scores={interest=2}] at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force
#execute as @e[scores={interest=2}] at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force
execute if score @s posx < @s selectionbox_x2 as @e[scores={interest=1..2}] store result entity @s Pos[0] double 1 run scoreboard players add @s posx 1
execute if score @s posx >= @s selectionbox_x2 at @s run function atrufulgium_sniper:tools/clone/smallclone/_ltsc_if1
execute if score @s posz < @s selectionbox_z2 at @s run function atrufulgium_sniper:tools/clone/smallclone/loopthroughselection