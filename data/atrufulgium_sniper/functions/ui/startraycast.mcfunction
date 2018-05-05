#Assumes something with tool data called
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§raycaster\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b}
execute store result entity @e[name="§raycaster",limit=1] Rotation[0] float 0.001 run data get entity @s Rotation[0] 1000
execute store result entity @e[name="§raycaster",limit=1] Rotation[1] float 0.001 run data get entity @s Rotation[1] 1000
execute as @e[name="§raycaster"] at @s run function atrufulgium_sniper:ui/jumpto
execute as @e[name="§raycaster"] at @s rotated as @s run tp ^ ^ ^0.5
#Copy relevant data
scoreboard players operation @e[name="§raycaster"] activefunction = @s activefunction
scoreboard players operation @e[name="§raycaster"] place_x = @s place_x
scoreboard players operation @e[name="§raycaster"] place_y = @s place_y
scoreboard players operation @e[name="§raycaster"] place_z = @s place_z
scoreboard players operation @e[name="§raycaster"] replace_x = @s replace_x
scoreboard players operation @e[name="§raycaster"] replace_y = @s replace_y
scoreboard players operation @e[name="§raycaster"] replace_z = @s replace_z
scoreboard players operation @e[name="§raycaster"] sphere_x = @s sphere_x
scoreboard players operation @e[name="§raycaster"] sphere_y = @s sphere_y
scoreboard players operation @e[name="§raycaster"] sphere_z = @s sphere_z
#Make its own selection in which to work (slightly larger to prevent errors)
execute as @e[name="§raycaster"] store result score @s posx run data get entity @s Pos[0] 1
execute as @e[name="§raycaster"] store result score @s posy run data get entity @s Pos[1] 1
execute as @e[name="§raycaster"] store result score @s posz run data get entity @s Pos[2] 1
execute as @e[name="§raycaster"] run scoreboard players remove @s posx 1
execute as @e[name="§raycaster"] run scoreboard players remove @s posy 1
execute as @e[name="§raycaster"] run scoreboard players remove @s posz 1
execute as @e[name="§raycaster"] store result entity @s Pos[0] double 1 run scoreboard players operation @s posx -= @s sphere_x
execute as @e[name="§raycaster"] store result entity @s Pos[1] double 1 run scoreboard players operation @s posy -= @s sphere_y
execute as @e[name="§raycaster"] store result entity @s Pos[2] double 1 run scoreboard players operation @s posz -= @s sphere_z
execute as @e[name="§raycaster"] run function atrufulgium_sniper:ui/selection1
execute as @e[name="§raycaster"] run scoreboard players operation @s posx += @s sphere_x
execute as @e[name="§raycaster"] run scoreboard players operation @s posy += @s sphere_y
execute as @e[name="§raycaster"] run scoreboard players operation @s posz += @s sphere_z
execute as @e[name="§raycaster"] run scoreboard players operation @s posx += @s sphere_x
execute as @e[name="§raycaster"] run scoreboard players operation @s posy += @s sphere_y
execute as @e[name="§raycaster"] run scoreboard players operation @s posz += @s sphere_z
execute as @e[name="§raycaster"] store result entity @s Pos[0] double 1 run scoreboard players add @s posx 2
execute as @e[name="§raycaster"] store result entity @s Pos[1] double 1 run scoreboard players add @s posy 2
execute as @e[name="§raycaster"] store result entity @s Pos[2] double 1 run scoreboard players add @s posz 2

#If it's the box brush set it to its appropriate tool and precise bounding box
execute as @e[name="§raycaster"] as @s[scores={activefunction=9..10}] store result entity @s Pos[0] double 1 run scoreboard players remove @s posx 1
execute as @e[name="§raycaster"] as @s[scores={activefunction=9..10}] store result entity @s Pos[1] double 1 run scoreboard players remove @s posy 1
execute as @e[name="§raycaster"] as @s[scores={activefunction=9..10}] store result entity @s Pos[2] double 1 run scoreboard players remove @s posz 1
execute as @e[name="§raycaster"] run function atrufulgium_sniper:ui/selection2

execute as @e[name="§raycaster"] as @s[scores={activefunction=9}] run scoreboard players set @s activefunction 1
execute as @e[name="§raycaster"] as @s[scores={activefunction=10}] run scoreboard players set @s activefunction 2

#Start the actual command if you hit anything
execute as @e[name="§raycaster"] at @s run function atrufulgium_sniper:ui/startselectionloop
kill @e[name="§raycaster"]