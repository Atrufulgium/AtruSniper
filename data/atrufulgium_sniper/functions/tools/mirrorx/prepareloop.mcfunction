#Summon an armor stand at either side of the mirror axis: one at (x1,y1,z1) and one at (x2,y1,z1).
#Assumes the caller's selectionbox.
tellraw @s {"text": "§b[Atru Sniper] §fMirroring the selection along the x-axis"}
scoreboard players set @s caller 1

#Set the scores for interest=1 and interest=2 right
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§clonesource\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
scoreboard players set @e[name="§clonesource"] interest 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§clonetarget\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
scoreboard players set @e[name="§clonetarget"] interest 2

execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_x1 = @e[scores={caller=1},limit=1] selectionbox_x1
execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_y1 = @e[scores={caller=1},limit=1] selectionbox_y1
execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_z1 = @e[scores={caller=1},limit=1] selectionbox_z1
execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_x2 = @e[scores={caller=1},limit=1] selectionbox_x2
execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_y2 = @e[scores={caller=1},limit=1] selectionbox_y2
execute as @e[scores={interest=1..2}] run scoreboard players operation @s selectionbox_z2 = @e[scores={caller=1},limit=1] selectionbox_z2
#it overshoots so when resetting it stays within the box like this
execute as @e[scores={interest=2}] run scoreboard players remove @s selectionbox_x2 1

execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players operation @s posx = @s selectionbox_x1
execute as @e[scores={interest=2}] store result entity @s Pos[0] double 1 run scoreboard players operation @s posx = @s selectionbox_x2

execute as @e[scores={interest=1..2}] store result entity @s Pos[1] double 1 run scoreboard players operation @s posy = @s selectionbox_y1
execute as @e[scores={interest=1..2}] store result entity @s Pos[2] double 1 run scoreboard players operation @s posz = @s selectionbox_z1
execute as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/mirrorx/loopthroughselection