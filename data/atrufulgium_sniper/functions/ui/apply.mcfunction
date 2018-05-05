#Notify the player of what they're doing.
execute unless score @s activefunction matches -2147483648..2147483647 run tellraw @s {"text": "§b[Atru Sniper] §cNo tool has been set!"}
execute if score @s activefunction matches 0 run tellraw @s {"text": "§b[Atru Sniper] §fDeleting the selection"}
execute if score @s activefunction matches 1 run tellraw @s {"text": "§b[Atru Sniper] §fReplacing the selection with the 'place' block"}
execute if score @s activefunction matches 2 run tellraw @s {"text": "§b[Atru Sniper] §fReplacing the 'replace' blocks in the selection with the 'place' block"}
execute if score @s activefunction matches 3 run tellraw @s {"text": "§b[Atru Sniper] §fCloning the contents of your red selection to the blue selection"}
execute if score @s activefunction matches 4 run tellraw @s {"text": "§b[Atru Sniper] §fCloning the contents of your red selection to the blue selection, ignoring air"}
execute if score @s activefunction matches 5 run tellraw @s {"text": "§b[Atru Sniper] §fApplying sphere brush"}
execute if score @s activefunction matches 6 run tellraw @s {"text": "§b[Atru Sniper] §fApplying sphere replace brush"}
execute if score @s activefunction matches 7 run tellraw @s {"text": "§b[Atru Sniper] §fApplying diamond brush"}
execute if score @s activefunction matches 8 run tellraw @s {"text": "§b[Atru Sniper] §fApplying diamond replace brush"}

execute if score @s activefunction matches 0..4 as @s at @s run function atrufulgium_sniper:ui/startselectionloop
execute if score @s activefunction matches 5..10 as @s at @s run function atrufulgium_sniper:ui/startraycast
execute if score @s activefunction matches 11..999 as @s at @s run function atrufulgium_sniper:ui/startselectionloop