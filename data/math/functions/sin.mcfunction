#Input: "0" - a two-decimal precision number. Should be between -314 and +314
#Output: The result of the function specified in the next comment. Also two-decimal precision.
#x - x^3/6 + x^5/145 resembles sin(x) much more closely than the 5th degree Taylor of sin(x).
#Memory entry 0: the x of the polynomial.
scoreboard players operation 0 math_memory = 0 math_input
#Memory entry 1: the x^3/6 of the polynomial. Divide by 100 per operation excluding the first inbetween because each value is 100 times its actual value.
#314^3 ~= 31e6 < int_max ~= 2e9, so I can just divide by 100*100 in one go.
scoreboard players operation 1 math_memory = 0 math_input
scoreboard players operation 1 math_memory *= 0 math_input
scoreboard players operation 1 math_memory *= 0 math_input
scoreboard players operation 1 math_memory /= 1e4 constant
#Ready memory entry 2
scoreboard players operation 2 math_memory = 1 math_memory
#Final division to make 1 its proper value.
scoreboard players operation 1 math_memory /= 6 constant
#Memory entry 2: the x^5/145 of the polynomial. Start working from x^3 already.
scoreboard players operation 2 math_memory *= 0 math_input
scoreboard players operation 2 math_memory *= 0 math_input
scoreboard players operation 2 math_memory /= 1e4 constant
scoreboard players operation 2 math_memory /= 145 constant
#Calculate the output
scoreboard players operation 0 math_output = 0 math_memory
scoreboard players operation 0 math_output -= 1 math_memory
scoreboard players operation 0 math_output += 2 math_memory