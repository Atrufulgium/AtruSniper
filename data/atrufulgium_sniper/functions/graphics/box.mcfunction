#Input: '0', '1', and '2' - normal numbers representing x, y, and z, the starting position of the line, in the math_input scoreboard;
#       '3', '4', and '5' - normal numbers representing x, y, and z, sizes of the box in the math_input scoreboard.
#This function outlines a box from ('0','1','2') to ('0'+'3','1'+'4','2'+'5')
#Particles: particle minecraft:dust r g b size posx3 0 0 0 1 1 force @s
#Copying nbt: execute store result entity @s Pos[0] double 1 run data get entity @s Pos[0] 1

#Initialisation
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§box\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b}
scoreboard players set @e[name="§box"] interest 1

scoreboard players operation 0 math_memory = 0 math_input
scoreboard players operation 0 math_memory += 3 math_input
scoreboard players operation 1 math_memory = 1 math_input
scoreboard players operation 1 math_memory += 4 math_input
scoreboard players operation 2 math_memory = 2 math_input
scoreboard players operation 2 math_memory += 5 math_input
#Set position
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movex = 3 math_input
scoreboard players set @e[scores={interest=1}] movey 0
scoreboard players set @e[scores={interest=1}] movez 0

#Draw the first vertex
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

#Prep and run 2nd vertex
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movey = 4 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

#Prep and run 3rd vertex
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movez = 5 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

#Prep second group of vertices
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movey = 4 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movez = 5 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

#Prep third group of vertices
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movex = 3 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movez = 5 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

#More vertices. Shouldn't even really comment on these. Building cubes from lines is boring.
execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_memory

scoreboard players operation @e[scores={interest=1}] movex = 3 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_memory

scoreboard players operation @e[scores={interest=1}] movey = 4 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_memory

scoreboard players operation @e[scores={interest=1}] movex = 3 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_input
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_memory

scoreboard players operation @e[scores={interest=1}] movey = 4 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

execute store result entity @e[scores={interest=1},limit=1] Pos[0] double 1 run scoreboard players get 0 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[1] double 1 run scoreboard players get 1 math_memory
execute store result entity @e[scores={interest=1},limit=1] Pos[2] double 1 run scoreboard players get 2 math_input

scoreboard players operation @e[scores={interest=1}] movez = 5 math_input
execute as @s[type=player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraight
execute as @s[type=!player] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:graphics/movestraightblue

kill @e[scores={interest=1}]