#Data the caller needs:
# <1> activefunction for what is done
#   <1.1> "0": Clear               <1.9> "8": Diamond (Replace)
#   <1.2> "1": Set
#   <1.3> "2": Replace
#   <1.4> "3": Clone
#   <1.5> "4": Clone (ignoring air)   
#   <1.6> "5": Sphere
#   <1.7> "6": Sphere (Replace)
#   <1.8> "7": Diamond
# <2> place_x, place_y, place_z for the block that will be copied
# <3> replace_x, replace_y, replace_z for the block that will be replaced
# <4> A selection in which to work
scoreboard players set @s caller 1
#Assumes a player called, with all those selection variables set.
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§thing\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b}
scoreboard players set @e[name="§thing"] interest 1
#Set the blocks to what they should be:
#(Default: air/air)
setblock 0 0 0 air
setblock 1 0 0 air
#Place
execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players get @e[scores={caller=1},limit=1] place_x
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players get @e[scores={caller=1},limit=1] place_y
execute as @e[scores={interest=1}] store result entity @s Pos[2] double 1 run scoreboard players get @e[scores={caller=1},limit=1] place_z
execute as @e[scores={interest=1}] at @s run clone ~ ~ ~ ~ ~ ~ 0 0 0 replace force
#Replace
execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players get @e[scores={caller=1},limit=1] replace_x
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players get @e[scores={caller=1},limit=1] replace_y
execute as @e[scores={interest=1}] store result entity @s Pos[2] double 1 run scoreboard players get @e[scores={caller=1},limit=1] replace_z
execute as @e[scores={interest=1}] at @s run clone ~ ~ ~ ~ ~ ~ 1 0 0 replace force

#Prepare position for the loop in the selection
scoreboard players operation @e[scores={interest=1}] posx = @s selectionbox_x1
scoreboard players operation @e[scores={interest=1}] posy = @s selectionbox_y1
scoreboard players operation @e[scores={interest=1}] posz = @s selectionbox_z1
execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players get @s posx
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players get @s posy
execute as @e[scores={interest=1}] store result entity @s Pos[2] double 1 run scoreboard players get @s posz

#Set scores for the brush tools
scoreboard players operation @e[scores={interest=1}] scenter_x = @s scenter_x
scoreboard players operation @e[scores={interest=1}] scenter_y = @s scenter_y
scoreboard players operation @e[scores={interest=1}] scenter_z = @s scenter_z
scoreboard players operation @e[scores={interest=1}] sphere_x = @s sphere_x
scoreboard players operation @e[scores={interest=1}] sphere_y = @s sphere_y
scoreboard players operation @e[scores={interest=1}] sphere_z = @s sphere_z
#(Set math inputs 3 through 5 to zero for distance3d to take the distance to (0,0,0))
scoreboard players set 3 math_input 0
scoreboard players set 4 math_input 0
scoreboard players set 5 math_input 0

#Run the actual loop unless:
# -activefunction=3
execute as @s[scores={activefunction=0}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/clear/loopthroughselection
execute as @s[scores={activefunction=1}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/set/loopthroughselection
execute as @s[scores={activefunction=2}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/replace/loopthroughselection
execute as @s[scores={activefunction=5}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/ellipsoid/loopthroughselection
execute as @s[scores={activefunction=6}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/ellipsoidreplace/loopthroughselection
execute as @s[scores={activefunction=7}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/diamond/loopthroughselection
execute as @s[scores={activefunction=8}] as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/diamondreplace/loopthroughselection
execute as @s[scores={activefunction=9..10}] as @e[scores={interest=1}] run function atrufulgium_sniper:ui/apply
# -activefunction=3
#small
execute as @s[scores={activefunction=3}] run function atrufulgium_sniper:tools/clone/smallclone/preparecloneloop
execute as @s[scores={activefunction=4}] run function atrufulgium_sniper:tools/clonenoair/smallclone/preparecloneloop
#large
#execute as @s[scores={activefunction=3}] run function atrufulgium_sniper:tools/clone/largeclone/preparecloneloop
#Clean up garbage
execute as @s[scores={activefunction=3..4}] run scoreboard players reset @s posx
execute as @s[scores={activefunction=3..4}] run scoreboard players reset @s posy
execute as @s[scores={activefunction=3..4}] run scoreboard players reset @s posz
kill @e[scores={interest=1}]
scoreboard players set @s caller 0
setblock 0 0 0 bedrock
setblock 1 0 0 bedrock
