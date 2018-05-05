#Kill off garbage
kill @e[scores={interest=0}]

#Make sure (0,0,0) and surroundings are loaded
execute as @a[scores={needstp=1}] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"§needstphere\"}",Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,NoGravity:1b}
tp @a[scores={needstp=1}] 0 1 0
execute as @e[name="§needstphere",limit=1] if block 0 0 0 bedrock run tp @a[scores={needstp=1}] @s
execute as @e[name="§needstphere",limit=1] if block 0 0 0 bedrock run kill @s

scoreboard players set @a[limit=1,sort=nearest] needstp 1
setblock 0 0 0 bedrock replace
execute if block 0 0 0 bedrock run scoreboard players set @a[scores={needstp=1}] needstp 0
#One-second timer
scoreboard players add @e timer 1
scoreboard players set @e[scores={timer=20..9999999}] timer 0

#Make it so non-creative players can't snipe
scoreboard players set @e[gamemode=!creative,scores={snipe=1}] snipe 0

#Draw any and all selection boxes
execute as @e[scores={timer=0,selection_x1=-2147483648..2147483647,selection_x2=-2147483648..2147483647,selection_y1=-2147483648..2147483647,selection_y2=-2147483648..2147483647,selection_z1=-2147483648..2147483647,selection_z2=-2147483648..2147483647}] run function atrufulgium_sniper:graphics/drawselectionbox
#Draw extra help lines:
# -The three blue lines for "it goes here" for copying
execute as @e[scores={timer=0,activefunction=3..4,selection_x1=-2147483648..2147483647,selection_x2=-2147483648..2147483647,selection_y1=-2147483648..2147483647,selection_y2=-2147483648..2147483647,selection_z1=-2147483648..2147483647,selection_z2=-2147483648..2147483647}] at @s run function atrufulgium_sniper:graphics/drawcopybox

#Tell players of their tools
execute as @a[scores={activefunction=0..999}] run function atrufulgium_sniper:ui/toolinfo