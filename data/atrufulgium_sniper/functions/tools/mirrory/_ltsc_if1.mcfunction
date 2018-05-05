execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players add @s posy 1
execute as @e[scores={interest=2}] store result entity @s Pos[1] double 1 run scoreboard players remove @s posy 1
execute as @e[scores={interest=1..2}] store result entity @s Pos[0] double 1 run scoreboard players operation @s posx = @s selectionbox_x1

execute if score @s posy >= @e[scores={caller=1},limit=1] scenter_y at @s run function atrufulgium_sniper:tools/mirrory/_ltsc_if2