#Input: Six 2-decimal precision numbers specifying x1, y1, z1, x2, y2, z2,
#Output: The distance between the points those numbers specify.
#Good old Pyth. Just sqrt(dx^2 + dy^2 + dz^2).
#Differences dx, dy, and dz, stored in '0', '1', '2'.
scoreboard players operation 0 math_memory = 0 math_input
scoreboard players operation 0 math_memory -= 3 math_input
scoreboard players operation 1 math_memory = 1 math_input
scoreboard players operation 1 math_memory -= 4 math_input
scoreboard players operation 2 math_memory = 2 math_input
scoreboard players operation 2 math_memory -= 5 math_input
#Square them. Same deal as usual, multiplying by something scaled with 100 -> need to divide the difference away.
scoreboard players operation 0 math_memory *= 0 math_memory
scoreboard players operation 0 math_memory /= 100 constant
scoreboard players operation 1 math_memory *= 1 math_memory
scoreboard players operation 1 math_memory /= 100 constant
scoreboard players operation 2 math_memory *= 2 math_memory
scoreboard players operation 2 math_memory /= 100 constant
#Prepare the input for math:sqrt
scoreboard players operation 0 math_input = 0 math_memory
scoreboard players operation 0 math_input += 1 math_memory
scoreboard players operation 0 math_input += 2 math_memory
function math:sqrt