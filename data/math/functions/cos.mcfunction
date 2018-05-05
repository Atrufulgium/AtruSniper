#Input: "0" - a two-decimal precision number. Should be between -314 and +314
#Output: The result of the function specified in the next comment. Also two-decimal precision.
#1 - x^2/2 + x^4/24 - x^6/840 resembles cos(x) much more closely than the 6th degree Taylor of cos(x).
#Memory entry 0: the 1 of the polynomial.
scoreboard players set 0 math_memory 100
#Memory entry 1: the x^2/2 of the polynomial. Divide by 100 per operation excluding the first inbetween because each value is 100 times its actual value.
scoreboard players operation 1 math_memory = 0 math_input
scoreboard players operation 1 math_memory *= 0 math_input
scoreboard players operation 1 math_memory /= 100 constant
#Final division to make 1 its proper value.
scoreboard players operation 1 math_memory /= 2 constant
#Memory entry 2: the x^4/24 of the polynomial. Start working from x^2/2 already: need *x^2/12.
scoreboard players operation 2 math_memory = 1 math_memory
scoreboard players operation 2 math_memory *= 0 math_input
scoreboard players operation 2 math_memory *= 0 math_input
scoreboard players operation 2 math_memory /= 1e4 constant
scoreboard players operation 2 math_memory /= 12 constant
#Memory entry 3: the x^6/840 of the polynomial. Start working from x^4/24 already: need *x^2/35
scoreboard players operation 3 math_memory = 2 math_memory
scoreboard players operation 3 math_memory *= 0 math_input
scoreboard players operation 3 math_memory *= 0 math_input
scoreboard players operation 3 math_memory /= 1e4 constant
scoreboard players operation 3 math_memory /= 35 constant
#Calculate the output
scoreboard players operation 0 math_output = 0 math_memory
scoreboard players operation 0 math_output -= 1 math_memory
scoreboard players operation 0 math_output += 2 math_memory
scoreboard players operation 0 math_output -= 3 math_memory