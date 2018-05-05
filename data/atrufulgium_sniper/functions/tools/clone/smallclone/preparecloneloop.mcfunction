#Store the difference between the location of the selection [e.g. in front of the player] and the copied selection [selectionbox 1's].
execute as @e[scores={caller=1}] positioned ^ ^1 ^2 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§copysel\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
execute as @e[scores={caller=1}] positioned ^ ^1 ^2 store result score @s copydx run data get entity @e[name="§copysel",limit=1] Pos[0] 1
execute as @e[scores={caller=1}] positioned ^ ^1 ^2 store result score @s copydy run data get entity @e[name="§copysel",limit=1] Pos[1] 1
execute as @e[scores={caller=1}] positioned ^ ^1 ^2 store result score @s copydz run data get entity @e[name="§copysel",limit=1] Pos[2] 1
kill @e[name="§copysel"]
execute as @e[scores={caller=1}] run scoreboard players operation @s copydx -= @s selectionbox_x1
execute as @e[scores={caller=1}] run scoreboard players operation @s copydy -= @s selectionbox_y1
execute as @e[scores={caller=1}] run scoreboard players operation @s copydz -= @s selectionbox_z1

#Set the scores for interest=1 and interest=2 right
summon minecraft:armor_stand ^ ^1 ^2 {CustomName:"{\"text\":\"§clonetarget\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
scoreboard players set @e[name="§clonetarget"] interest 2
execute as @e[scores={interest=2}] run scoreboard players operation @s posx = @e[scores={caller=1}] selectionbox_x1
execute as @e[scores={interest=2}] run scoreboard players operation @s posx += @e[scores={caller=1}] copydx
execute as @e[scores={interest=2}] run scoreboard players operation @s selectionbox_x1 = @s posx
execute as @e[scores={interest=2}] run scoreboard players operation @s posy = @e[scores={caller=1}] selectionbox_y1
execute as @e[scores={interest=2}] run scoreboard players operation @s posy += @e[scores={caller=1}] copydy
execute as @e[scores={interest=2}] run scoreboard players operation @s selectionbox_y1 = @s posy
execute as @e[scores={interest=2}] run scoreboard players operation @s posz = @e[scores={caller=1}] selectionbox_z1
execute as @e[scores={interest=2}] run scoreboard players operation @s posz += @e[scores={caller=1}] copydz
execute as @e[scores={interest=2}] run scoreboard players operation @s selectionbox_z1 = @s posz

scoreboard players operation @e[scores={interest=1}] selectionbox_x1 = @e[scores={caller=1}] selectionbox_x1
scoreboard players operation @e[scores={interest=1}] selectionbox_y1 = @e[scores={caller=1}] selectionbox_y1
scoreboard players operation @e[scores={interest=1}] selectionbox_z1 = @e[scores={caller=1}] selectionbox_z1
scoreboard players operation @e[scores={interest=1}] selectionbox_x2 = @e[scores={caller=1}] selectionbox_x2
scoreboard players operation @e[scores={interest=1}] selectionbox_y2 = @e[scores={caller=1}] selectionbox_y2
scoreboard players operation @e[scores={interest=1}] selectionbox_z2 = @e[scores={caller=1}] selectionbox_z2
execute as @e[scores={interest=1}] at @s run function atrufulgium_sniper:tools/clone/smallclone/loopthroughselection