#Input: "0" - a two-decimal precision number. Can't exceed the order of 1e7.
#Output: The square root of said number. Also two-decimal precision.
#Uses the Babylonian method.
#n
scoreboard players operation 0 math_memory = 0 math_input
#x
scoreboard players operation 1 math_memory = 0 math_input
#y
scoreboard players set 2 math_memory 100
#While '1' - '2' > 1
# '1' = ('1' + '2')/2
# '2' = '0'/'1'
function math:_sqrt_helper
# return '1'
scoreboard players operation 0 math_output = 1 math_memory