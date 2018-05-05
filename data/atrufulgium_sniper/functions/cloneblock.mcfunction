execute as @s at @s run clone ~ ~ ~ ~ ~ ~ 0 0 0 replace force
scoreboard players operation @s posx += @e[scores={caller=1},limit=1] posx
scoreboard players operation @s posy += @e[scores={caller=1},limit=1] posy
scoreboard players operation @s posz += @e[scores={caller=1},limit=1] posz
execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players get @s posx
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players get @s posy
execute as @e[scores={interest=1}] store result entity @s Pos[2] double 1 run scoreboard players get @s posz
execute as @s at @s run clone 0 0 0 0 0 0 ~ ~ ~ replace force
scoreboard players operation @s posx -= @e[scores={caller=1},limit=1] posx
scoreboard players operation @s posy -= @e[scores={caller=1},limit=1] posy
scoreboard players operation @s posz -= @e[scores={caller=1},limit=1] posz
execute as @e[scores={interest=1}] store result entity @s Pos[0] double 1 run scoreboard players get @s posx
execute as @e[scores={interest=1}] store result entity @s Pos[1] double 1 run scoreboard players get @s posy
execute as @e[scores={interest=1}] store result entity @s Pos[2] double 1 run scoreboard players get @s posz