#Moves an entity forward until it hits a block or moves too far.
execute as @s[scores={raycast=1..999}] at @s unless block ~ ~ ~ air run scoreboard players set @s raycast 0
execute as @s[scores={raycast=1..999}] at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.5
execute as @s[scores={raycast=1..999}] at @s if block ~ ~ ~ air run scoreboard players remove @s raycast 1
execute as @s[scores={raycast=1..999}] at @s if block ~ ~ ~ air run function atrufulgium_sniper:raycast