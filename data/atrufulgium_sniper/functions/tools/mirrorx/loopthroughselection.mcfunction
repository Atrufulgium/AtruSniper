#The lower-than-x armorstand is the @s in this loop
execute as @s at @s run clone ~ ~ ~ ~ ~ ~ 0 0 0 replace force
execute as @e[scores={interest=2}] at @s run clone ~ ~ ~ ~ ~ ~ 0 1 0 replace force
execute as @s at @s run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute as @e[scores={interest=2}] at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force

execute if score @s posx < @e[scores={caller=1},limit=1] scenter_x as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players add @s posx 1
execute if score @s posx < @e[scores={caller=1},limit=1] scenter_x as @e[scores={interest=2}] store result entity @s Pos[0] double 1 run scoreboard players remove @s posx 1
execute if score @s posx >= @e[scores={caller=1},limit=1] scenter_x at @s run function atrufulgium_sniper:tools/mirrorx/_ltsc_if1
execute if score @s posz < @s selectionbox_z2 at @s run function atrufulgium_sniper:tools/mirrorx/loopthroughselection