#Input: "0" - any number.
#Output: The absolute value of "0".
scoreboard players operation 1 math_input = 0 math_input
scoreboard players operation 1 math_input *= -1 constant
function math:max