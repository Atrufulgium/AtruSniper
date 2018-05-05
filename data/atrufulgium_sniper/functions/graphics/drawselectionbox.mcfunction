#Execute as a player with the appropriate scores.
scoreboard players operation 0 math_input = @s selectionbox_x1
scoreboard players operation 1 math_input = @s selectionbox_y1
scoreboard players operation 2 math_input = @s selectionbox_z1
#Here we use the assumption that the 2's are larger than the 1's.
scoreboard players operation 3 math_input = @s selectionbox_x2
scoreboard players operation 3 math_input -= @s selectionbox_x1
scoreboard players operation 4 math_input = @s selectionbox_y2
scoreboard players operation 4 math_input -= @s selectionbox_y1
scoreboard players operation 5 math_input = @s selectionbox_z2
scoreboard players operation 5 math_input -= @s selectionbox_z1
function atrufulgium_sniper:graphics/box