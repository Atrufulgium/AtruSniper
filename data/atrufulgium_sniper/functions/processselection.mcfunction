#Make sure it's at least 1 wide
execute as @s if score @s selection_x1 = @s selection_x2 run scoreboard players add @s selection_x2 1
execute as @s if score @s selection_y1 = @s selection_y2 run scoreboard players add @s selection_y2 1
execute as @s if score @s selection_z1 = @s selection_z2 run scoreboard players add @s selection_z2 1
#Convert them to format lowest highest while keeping the originals
scoreboard players operation @s[scores={selection_x1=-2147483648..2147483647}] selectionbox_x1 = @s selection_x1
scoreboard players operation @s[scores={selection_y1=-2147483648..2147483647}] selectionbox_y1 = @s selection_y1
scoreboard players operation @s[scores={selection_z1=-2147483648..2147483647}] selectionbox_z1 = @s selection_z1
scoreboard players operation @s[scores={selection_x2=-2147483648..2147483647}] selectionbox_x2 = @s selection_x2
scoreboard players operation @s[scores={selection_y2=-2147483648..2147483647}] selectionbox_y2 = @s selection_y2
scoreboard players operation @s[scores={selection_z2=-2147483648..2147483647}] selectionbox_z2 = @s selection_z2
#Actual "lowest lowest highest highest" part
execute as @s if score @s selectionbox_x1 > @s selectionbox_x2 run scoreboard players operation @s selectionbox_x1 >< @s selectionbox_x2
execute as @s if score @s selectionbox_y1 > @s selectionbox_y2 run scoreboard players operation @s selectionbox_y1 >< @s selectionbox_y2
execute as @s if score @s selectionbox_z1 > @s selectionbox_z2 run scoreboard players operation @s selectionbox_z1 >< @s selectionbox_z2
scoreboard players operation @s deltax = @s selectionbox_x2
scoreboard players operation @s deltax -= @s selectionbox_x1
scoreboard players operation @s deltay = @s selectionbox_y2
scoreboard players operation @s deltay -= @s selectionbox_y1
scoreboard players operation @s deltaz = @s selectionbox_z2
scoreboard players operation @s deltaz -= @s selectionbox_z1
#Set the center variables
scoreboard players operation @s scenter_x = @s selection_x1
scoreboard players operation @s scenter_y = @s selection_y1
scoreboard players operation @s scenter_z = @s selection_z1
scoreboard players operation @s scenter_x += @s selection_x2
scoreboard players operation @s scenter_y += @s selection_y2
scoreboard players operation @s scenter_z += @s selection_z2
scoreboard players operation @s scenter_x /= 2 constant
scoreboard players operation @s scenter_y /= 2 constant
scoreboard players operation @s scenter_z /= 2 constant
#Draw the new box immediately
execute as @s[scores={selection_x1=-2147483648..2147483647,selection_x2=-2147483648..2147483647,selection_y1=-2147483648..2147483647,selection_y2=-2147483648..2147483647,selection_z1=-2147483648..2147483647,selection_z2=-2147483648..2147483647}] run function atrufulgium_sniper:graphics/drawselectionbox