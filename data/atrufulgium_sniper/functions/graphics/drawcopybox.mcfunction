summon minecraft:armor_stand ^ ^1 ^2 {CustomName:"{\"text\":\"§copybox\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
#Execute as a player with the appropriate scores.
execute store result score 0 math_input run data get entity @e[name="§copybox",limit=1] Pos[0] 1
execute store result score 1 math_input run data get entity @e[name="§copybox",limit=1] Pos[1] 1
execute store result score 2 math_input run data get entity @e[name="§copybox",limit=1] Pos[2] 1
#Here we use the assumption that the 2's are larger than the 1's.
scoreboard players operation 3 math_input = @s selectionbox_x2
scoreboard players operation 3 math_input -= @s selectionbox_x1
scoreboard players operation 4 math_input = @s selectionbox_y2
scoreboard players operation 4 math_input -= @s selectionbox_y1
scoreboard players operation 5 math_input = @s selectionbox_z2
scoreboard players operation 5 math_input -= @s selectionbox_z1
execute as @e[name="§copybox"] at @s run function atrufulgium_sniper:graphics/box
kill @e[name="§copybox"]