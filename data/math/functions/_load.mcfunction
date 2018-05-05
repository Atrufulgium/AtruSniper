#Temporary variables that shouldn't be kept between sessions
scoreboard objectives remove math_input
scoreboard objectives add math_input dummy
scoreboard objectives remove math_output
scoreboard objectives add math_output dummy

scoreboard objectives remove math_memory
scoreboard objectives add math_memory dummy

#Permanent variables

scoreboard objectives add constant dummy
scoreboard players set -1 constant -1
scoreboard players set 2 constant 2
scoreboard players set 6 constant 6
scoreboard players set 8 constant 8
scoreboard players set 9 constant 9
scoreboard players set 10 constant 10
scoreboard players set 12 constant 12
scoreboard players set 35 constant 35
scoreboard players set 100 constant 100
scoreboard players set 145 constant 145
scoreboard players set 1000 constant 1000
scoreboard players set 1e4 constant 10000
scoreboard players set 1e6 constant 1000000