#Line: {\"text\":\"§r[Selection corner 1]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/selection1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Sets the first corner of the selection you're working with.\"}]}}}
#Specifically tool line: {\"text\":\"§r[TOOL NAME]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"COMMAND\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7DESCRIPTION\",\"whitespace\":\"     \"}]}}}
#Don't mind the whitespace, it's for making this slightly more readable with exactly my screen width/word-wrap settings.
#\"whitespace\":\"     \"
give @s written_book{pages:["[\"\",{\"whitespace\":\"                                                                                                                                                                                                                         \",\"text\":\"§oClick to run commands.\\n\"},{\"text\":\"§r§l[Apply tool]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/apply\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Uses the tool you've set.\\n§7See the following pages for more options.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                    \"}]}}},{\"text\":\"§r[Jumpto]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/jumpto\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Moves you forward at most 500 blocks until you hit a solid block or unloaded chunk.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                    \"}]}}},{\"text\":\"§r[Selection corner 1]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/selection1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Sets the first corner of the selection you're working with. If the selection would become zero blocks wide/tall/long, it makes it one block wide/tall/long.\",\"whitespace\":\"                                                                                                                                                                                                                         \"}]}}},{\"text\":\"§r[Selection corner 2]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/selection2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Sets the second corner of the selection you're working with. If the selection would become zero blocks wide/tall/long, it makes it one block wide/tall/long.\",\"whitespace\":\"                                                                                                                                                                                                                         \"}]}}},{\"text\":\"§r[Selection reset]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/selectionreset\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Removes the selection.\",\"whitespace\":\"                                                                                                                                                                                               \"}]}}},{\"text\":\"§r[Set 'place' block]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/setplace\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Sets the block you're placing to be the one you're standing on. When applying anything, make sure you don't have the chunk of this block unloaded by being to far away or something.\",\"whitespace\":\"                                                                                                                                                                                                     \"}]}}},{\"text\":\"§r[Set 'replace' block]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/setreplace\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Sets the block to replace to be the one you're standing on. When applying anything, make sure you don't have the chunk of this block unloaded by being to far away or something.\",\"whitespace\":\"                                                                                                                                                                                                      \"}]}}},{\"text\":\"§r§c§l[Reset Tool]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:ui/resettool\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Resets all aspects of your current tool and selection.\"}]}}}]","[\"\",{\"text\":\"§oClick to select tools.\\n\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         \"},{\"text\":\"§r[Clear Tool]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7This is a tool that replaces the entire selection with air. Make sure your selection is loaded.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                          \"}]}}},{\"text\":\"§r[Set Tool]\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7This is a tool that replaces the entire selection with the 'place' block. Make sure your selection is loaded.\",\"whitespace\":\"                                                                                                                                                                                                                                                                              \"}]}}},{\"text\":\" §r(Replace)\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Only apply the Set Tool to the 'replace' Block in the selection.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                          \"}]}}},{\"text\":\"§r[Clone Tool]\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7This is a tool that clones the contents of the selection to your current position. Make sure both your selection and to where you are pasting are loaded.\",\"whitespace\":\"                                                                                                                                                                                                                                 \"}]}}},{\"text\":\" §r(No Air)\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Only clone the blocks that are not air.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                   \"}]}}},{\"text\":\"\\n§r[Snipe Sphere]\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 5\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Makes a sphere with radii (§cnot diameters§7!) for x, y, and z at the block you're looking at, made of the 'place' block. See the next page for setting the radius for each axis.\",\"whitespace\":\"                                                                                                                                                                                                           \"}]}}}, {\"text\":\" §r(Repl.)\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 6\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Only apply the snipe to the 'replace' Block.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                   \"}]}}},{\"text\":\"§r[Snipe Box]\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 9\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Makes a box with radii (§cnot diameters§7!) for x, y, and z at the block you're looking at, made of the 'place' block. See the next page for setting the radius for each axis.\",\"whitespace\":\"                                                                                                                                                                                                             \"}]}}}, {\"text\":\" §r(Repl.)\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 10\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Only apply the snipe to the 'replace' Block.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                        \"}]}}},{\"text\":\"§r[Snipe Diamond]\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 7\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Makes a diamond shape with radii (§cnot diameters§7!) for x, y, and z at the block you're looking at, made of the 'place' block. See the next page for setting the radius for each axies.\",\"whitespace\":\"                                                                                                                                                                                                                     \"}]}}}, {\"text\":\" §r(Repl.)\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s activefunction 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Only apply the snipe to the 'replace' Block.\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                               \"}]}}}]","[\"\",{\"text\":\"§oClick for x-radius.\\n\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \"},{\"text\":\"§c§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§70\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§71\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§72\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§73\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§74\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 5\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§75\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 6\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§76\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 7\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§77\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§78\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 9\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§79\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§c§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 10\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§710\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 11\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§711\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 12\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§712\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 13\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§713\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 14\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§714\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 15\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§715\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 16\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§716\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 17\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§717\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 18\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§718\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§4§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 19\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§719\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§c§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 20\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§720\",\"whitespace\":\"                                                                  \"}]}}},{\"text\":\"\\n§oClick for y-radius.\\n\",\"whitespace\":\"                                                                                                                                                                                                                                                                 \"},{\"text\":\"§a§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§70\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§71\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§72\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§73\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§74\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 5\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§75\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 6\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§76\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 7\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§77\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§78\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 9\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§79\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§a§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 10\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§710\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 11\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§711\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 12\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§712\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 13\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§713\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 14\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§714\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 15\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§715\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 16\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§716\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 17\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§717\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 18\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§718\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§2§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 19\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§719\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§a§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_y 20\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§720\",\"whitespace\":\"                                                               \"}]}}},{\"text\":\"\\n§oClick for z-radius.\\n\",\"whitespace\":\"                                                                                                                                                                                                                                                                 \"},{\"text\":\"§9§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§70\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§71\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§72\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§73\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§74\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 5\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§75\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 6\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§76\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 7\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§77\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§78\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 9\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§79\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§9§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 10\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§710\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 11\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§711\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 12\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§712\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 13\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§713\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 14\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§714\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 15\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§715\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 16\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§716\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 17\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§717\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 18\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§718\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§1§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 19\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§719\",\"whitespace\":\"                                                             \"}]}}},{\"text\":\"§9§l\\u258D\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_z 20\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§720\",\"whitespace\":\"                                                             \"}]}}}]","[\"\",                                                                                                                                                                                                                                                                                                                                        {\"text\":\"§oClick to apply to selection.\\n\",\"whitespace\":\"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           \"},{\"text\":\"§r[Mirror x]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:tools/mirrorx/prepareloop\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Mirrors the selection, changing only the x-coordinates of blocks.\",\"whitespace\":\"                                                                                                                                                  \"}]}}},{\"text\":\"§r[Mirror y]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:tools/mirrory/prepareloop\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Mirrors the selection, changing only the y-coordinates of blocks.\",\"whitespace\":\"                                                                                                                                                  \"}]}}},{\"text\":\"§r[Mirror z]\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function atrufulgium_sniper:tools/mirrorz/prepareloop\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§7Mirrors the selection, changing only the z-coordinates of blocks.\",\"whitespace\":\"                                                                                                                                                                                                     \"}]}}}]"],title:"AtruSniper commands",author:""} 1
#{\"text\":\"§4§l\\u2588\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s sphere_x 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"§70\",\"whitespace\":\"                                                             \"}]}}}