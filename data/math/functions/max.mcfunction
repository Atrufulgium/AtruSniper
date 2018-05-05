#Input: "0" and "1" - any number.
#Output: The maximum of the two.
scoreboard players operation 0 math_memory = 0 math_input
scoreboard players operation 0 math_memory > 1 math_input
scoreboard players operation 0 math_output = 0 math_memory