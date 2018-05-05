#The lower-than-x armorstand is the @s in this loop
execute as @s at @s run clone ~ ~ ~ ~ ~ ~ 0 0 0 replace force
execute as @e[scores={interest=2}] at @s run clone ~ ~ ~ ~ ~ ~ 0 1 0 replace force
execute as @s at @s run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute as @e[scores={interest=2}] at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force

execute if score @s posx < @s selectionbox_x2 as @e[scores={interest=1..2}] store result entity @s Pos[0] double 1 run scoreboard players add @s posx 1
execute if score @s posx >= @s selectionbox_x2 at @s run function atrufulgium_sniper:tools/mirrorz/_ltsc_if1
execute if score @s posz < @e[scores={caller=1},limit=1] scenter_z at @s run function atrufulgium_sniper:tools/mirrorz/loopthroughselection