#Helper file for the math:sqrt function
#While '1' - '2' > 1
# '1' = ('1' + '2')/2
# '2' = '0'/'1'
scoreboard players operation 3 math_memory = 1 math_memory
scoreboard players operation 3 math_memory -= 2 math_memory
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 4 math_memory = 1 math_memory
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 4 math_memory += 2 math_memory
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 4 math_memory /= 2 constant
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 1 math_memory = 4 math_memory
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 2 math_memory = 0 math_memory
#I'll be dividing by something scaled by 100, so need an extra *100.
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 2 math_memory *= 100 constant
execute if score 3 math_memory matches 2..2147483647 run scoreboard players operation 2 math_memory /= 1 math_memory
execute if score 3 math_memory matches 2..2147483647 run function math:_sqrt_helper