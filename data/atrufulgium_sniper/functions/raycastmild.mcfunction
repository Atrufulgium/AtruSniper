#Moves an entity forward until it hits a block you can't usually move through or moves too far.
execute as @s[scores={raycast=1..999}] at @s unless block ~ ~ ~ #atrufulgium_sniper:transparant run scoreboard players set @s raycast 0
execute as @s[scores={raycast=1..999}] at @s rotated as @s if block ~ ~ ~ #atrufulgium_sniper:transparant run tp @s ^ ^ ^0.5
execute as @s[scores={raycast=1..999}] at @s if block ~ ~ ~ #atrufulgium_sniper:transparant run scoreboard players remove @s raycast 1
execute as @s[scores={raycast=1..999}] at @s rotated as @s if block ~ ~ ~ #atrufulgium_sniper:transparant run function atrufulgium_sniper:raycastmild