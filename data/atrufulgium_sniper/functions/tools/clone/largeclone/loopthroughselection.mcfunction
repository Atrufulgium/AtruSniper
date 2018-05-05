#Use the fact that the selection sizes for the clone area and the cloned area are the same.
#The interest=1 should be the looper. interest=2 tags along.
execute as @s[scores={interest=1}] at @s run clone ~ ~ ~ ~8 ~8 ~8 0 1 0 replace force
execute as @e[scores={interest=2}] at @s run clone 0 1 0 8 9 8 ~ ~ ~ replace force
execute as @e[scores={interest=1..2}] store result entity @s Pos[0] double 1 run scoreboard players add @s posx 8
execute if score @s posx >= @s selection_x2 if score @s posx < @s selectionbox_x2 store result entity @s Pos[0] double 1 run scoreboard players operation @s posx = @s selection_x2
execute if score @s posx >= @s selectionbox_x2 at @s run function atrufulgium_sniper:tools/clone/largeclone/_ltsc_if1
execute as @s[scores={interest=1}] run function atrufulgium_sniper:tools/clone/largeclone/loopthroughselection