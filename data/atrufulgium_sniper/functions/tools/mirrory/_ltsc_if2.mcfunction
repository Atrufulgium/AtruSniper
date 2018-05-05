execute as @e[scores={interest=1..2}] store result entity @s Pos[2] double 1 run scoreboard players add @s posz 1
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players operation @s posy = @s selectionbox_y1
execute as @e[scores={interest=2}] store result entity @s Pos[1] double 1 run scoreboard players operation @s posy = @s selectionbox_y2

execute if score @s posz >= @s selectionbox_z2 run scoreboard players set @e[scores={interest=1..2}] interest 0