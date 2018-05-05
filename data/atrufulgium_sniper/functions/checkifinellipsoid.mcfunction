#Set the inputs to the differences to the selection center (so the other coords can be (0,0,0), and so scaling works nicer)
scoreboard players operation 0 math_input = @s posx
scoreboard players operation 0 math_input -= @s scenter_x
scoreboard players operation 1 math_input = @s posy
scoreboard players operation 1 math_input -= @s scenter_y
scoreboard players operation 2 math_input = @s posz
scoreboard players operation 2 math_input -= @s scenter_z
#Scale by 100 because sqrt is two digit decimal precision
scoreboard players operation 0 math_input *= 100 constant
scoreboard players operation 1 math_input *= 100 constant
scoreboard players operation 2 math_input *= 100 constant
#Divide each axis by the appropriate radius (so after it should be in the unit (=100) sphere)
scoreboard players operation 0 math_input /= @s sphere_x
scoreboard players operation 1 math_input /= @s sphere_y
scoreboard players operation 2 math_input /= @s sphere_z
function math:distance3d