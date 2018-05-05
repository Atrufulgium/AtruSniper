tellraw @a {"text":"§bRunning Atrufulgium Sniper §lv0.1 §r(version 'alpha beta early-access pre-release demo showcase day-negative-one-dlc')"}
tellraw Atrufulgium {"text":"§b§lTODO:"}
tellraw Atrufulgium {"text":"  §9-Large Clone: Generally broken. Don't even know if worth because MC's clone is somewhy really slow. It's probably worth it though."}
#Temporary variables that can get reset
scoreboard objectives remove interest
scoreboard objectives add interest dummy

scoreboard objectives remove caller
scoreboard objectives add caller dummy

scoreboard objectives remove needstp
scoreboard objectives add needstp dummy

scoreboard objectives remove timer
scoreboard objectives add timer dummy

#Permanent variables
scoreboard objectives add posx dummy
scoreboard objectives add posy dummy
scoreboard objectives add posz dummy

scoreboard objectives add movex dummy
scoreboard objectives add movey dummy
scoreboard objectives add movez dummy

scoreboard objectives add raycast dummy

#Permanent variables describing what tool etc is used
#The function to be used by this entity
scoreboard objectives add activefunction dummy

#The (block to be used by this entity)'s in-world coordinates
scoreboard objectives add place_x dummy
scoreboard objectives add place_y dummy
scoreboard objectives add place_z dummy

#The (block to be replaced by this entity)'s in-world coordinates
scoreboard objectives add replace_x dummy
scoreboard objectives add replace_y dummy
scoreboard objectives add replace_z dummy

#The two corners of the selection set by the player
scoreboard objectives add selection_x1 dummy
scoreboard objectives add selection_y1 dummy
scoreboard objectives add selection_z1 dummy
scoreboard objectives add selection_x2 dummy
scoreboard objectives add selection_y2 dummy
scoreboard objectives add selection_z2 dummy

#The same box, but with the _1's being the minima, and _2's being the maxima
scoreboard objectives add selectionbox_x1 dummy
scoreboard objectives add selectionbox_y1 dummy
scoreboard objectives add selectionbox_z1 dummy
scoreboard objectives add selectionbox_x2 dummy
scoreboard objectives add selectionbox_y2 dummy
scoreboard objectives add selectionbox_z2 dummy

#The center coordinates of the box
scoreboard objectives add scenter_x dummy
scoreboard objectives add scenter_y dummy
scoreboard objectives add scenter_z dummy

#A difference variable, usually for the size of the selection box
scoreboard objectives add deltax dummy
scoreboard objectives add deltay dummy
scoreboard objectives add deltaz dummy

#A difference variable used in copying
scoreboard objectives add copydx dummy
scoreboard objectives add copydy dummy
scoreboard objectives add copydz dummy

#The radii of the ellipsoid in each of the cardinal directions
scoreboard objectives add sphere_x dummy
scoreboard objectives add sphere_y dummy
scoreboard objectives add sphere_z dummy

gamerule maxCommandChainLength 20000000