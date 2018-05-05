#Input: Six 2-decimal precision numbers specifying x1, y1, z1, x2, y2, z2,
#Output: The "distance" between the points those numbers specify, according to |x1 - x2| + |y1 - y2| + |z1 - z2|.
#(Plotting all points within a certain distance gives a diamond shape instead of a sphere shape)
#abs needs math memory '0'
scoreboard players operation 1 math_memory = 0 math_input
scoreboard players operation 1 math_memory -= 3 math_input
scoreboard players operation 2 math_memory = 1 math_input
scoreboard players operation 2 math_memory -= 4 math_input
scoreboard players operation 3 math_memory = 2 math_input
scoreboard players operation 3 math_memory -= 3 math_input
#Apply the abs
scoreboard players operation 0 math_input = 1 math_memory
function math:abs
scoreboard players operation 1 math_memory = 0 math_output
scoreboard players operation 0 math_input = 2 math_memory
function math:abs
scoreboard players operation 2 math_memory = 0 math_output
scoreboard players operation 0 math_input = 3 math_memory
function math:abs
scoreboard players operation 0 math_output += 1 math_memory
scoreboard players operation 0 math_output += 2 math_memory