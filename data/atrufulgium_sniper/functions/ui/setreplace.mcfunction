execute as @s at @s run tp @s ~ ~0.5 ~
execute store result score @s replace_x run data get entity @s Pos[0] 1
execute store result score @s replace_y run data get entity @s Pos[1] 1 
execute store result score @s replace_z run data get entity @s Pos[2] 1
#The block you're standing on: 1 lower.
scoreboard players remove @s replace_y 1
execute as @s at @s run tp @s ~ ~-0.5 ~