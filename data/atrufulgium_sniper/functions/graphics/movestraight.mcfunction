execute as @s at @s run particle minecraft:dust 0.9 0.1 0.1 4 ~ ~ ~ 0 0 0 1 1 force
#Moves outwards the amount of blocks stored in movex, movey, and movez.
execute as @s[scores={movex=1..999}] at @s run tp @s ~1 ~ ~
execute as @s[scores={movex=1..999}] at @s run scoreboard players remove @s movex 1
execute as @s[scores={movey=1..999}] at @s run tp @s ~ ~1 ~
execute as @s[scores={movey=1..999}] at @s run scoreboard players remove @s movey 1
execute as @s[scores={movez=1..999}] at @s run tp @s ~ ~ ~1
execute as @s[scores={movez=1..999}] at @s run scoreboard players remove @s movez 1
execute as @s[scores={movex=1..999}] run function atrufulgium_sniper:graphics/movestraight
execute as @s[scores={movex=0,movey=1..999}] run function atrufulgium_sniper:graphics/movestraight
execute as @s[scores={movex=0,movey=0,movez=1..999}] run function atrufulgium_sniper:graphics/movestraight