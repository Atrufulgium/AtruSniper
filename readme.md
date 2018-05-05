What's this?
======
This is a Minecraft datapack which aims to recreate Worldedit and Voxelsniper features in vanilla. Those include selections, modifying selections through translations/rotations/scales/set/replace, and sniping different shapes.

**The main feature that definitely _won't_ be implemented is undo**, at least until Minecraft functions allow you to store large amounts of blocks easily. So be careful.

This datapack executes _a lot_ of commands to get things done. The packs sets the ```maxChainCommandLength``` gamerule to 20 million for that reason, but for huge selections you might need even more. A good rule of thumb for the amount of commands is to take your selection volume and multiply that amount by 100. (I certainly hope I shouldn't have to use 1000 command per block for something!)

Also, this datapack uses (0,0,0) through (9,9,9) for copying and storing stuff. This is currently not modifiable. **Don't use this if you have something valueable there.** Maybe move it over.

Currently made for snapshot 18w11a, but it should work in the newer ones too. Maybe even some older ones.

How to install
======

1. Click the big fancy green "Clone or Download" button, and select "Download ZIP".
2. Navigate to the Minecraft world save where you want to use this.
3. Go to the "datapacks" folder and put the contents of the ZIP in there.
4. If you already were in that world, press F3-t to reload all data- and resource packs to enable it. Alternatively, rejoin. If you were not in that world at the time of install, simply join the world.
5. Run ```/function atrufulgium_sniper:book``` to get started! That book has all features you can use with tooltips explaining them.

The Basics
======
There are two types of tools. _Selection_ tools and _snipe_ tools.

For selection tools, you first need to have a selection. Selections are determined by their two corners that you can set using the ```[Selection corner 1]``` and ```[Selection corner 2]``` options on page 1 of the book. The selection will always be at least 1 block wide, high, and tall. The selection is displayed with a red particle outline.

For snipe tools, you will need to have the radius of each axis specified. You can do that by going to page three and selecting the desired radius. Please note that those are radii, and exclude the center. So a radius of 0 will be a single block, while a radius of 2 will have a width of 5. The snipe tools are centered at the block you are looking at.

For most tools you will need to set _Place_ and maybe even _Replace_ blocks. You do this by standing on top of the block you want, and clicking ```[Set 'place' block]``` or ```[Set 'replace' block]``` on the first page. Everytime you need them, they will be copied from that position.

A quick overview of all tools
------
Selection tools:
* **Clear tool**: This tool replaces the entire selection with air.
* **Set tool**: This tool sets the entire selection to the _Place_ block.
* **Set tool (Replace)**: This tool replaces all _Replace_ blocks in the selection with the _Place_ block.
* **Clone tool**: When equipping this tool, you will see a blue selection appear. That selection is a guidance for where you will clone to: when using it, everything in your selection will be copied exactly to the blue selection.
* **Clone tool (No air)**: This behaves the same as the Clone tool, but it ignores air in the original selection. (This will usually mean far less blocks are copied, so it's usually far faster!)

Snipe tools (all of these have a Replace variant which makes it only affect _Replace_ blocks):
* **Snipe Sphere**: This tool creates an ellipsoid made of the _Place_ block.
* **Snipe Box**: This tool creates a box made of the _Place_ block.
* **Snipe Diamond**: This tool creates a diamond shape made of the _Place_ block.

Other tools
* **Jumpto**: Instantly teleports you to where you are looking at
* **Mirror**: Three variants for x, y, and z, each of which instantly mirrors the selection in that direction.

Preemptive FAQ
=====
>Your datapack broke my map.

Make backups. Often. This goes for anything. I can't guarantee everything works. **If you found a bug, notify me!** And as said before, don't have anything valueable close to (0,0,0), as I use that area for storing blocks.

>Your code is a mess.

I know. It's hilarious not having loops explicitly; using recursion to achieve them doesn't help the readability. That, and function files seem to encourage _ignoring_ the DRY principle because if-statements and such count as commands and it's absolutely vital to bring that number down at any cost. So I'd rather have the ```loopthroughselection.mcfunction``` seperate for every tool so that I don't need to check which tool is used for every block.

>Your code is slow.

I know. All block placing functions seem to block- and lightupdate their surroundings block by block. I wish that could be toggled.

>I have a suggestion.

Let me know! I can't have thought of everything that anyone'd want, so input is appreciated!

>Can I contribute?

Sure, once this github newbie gets how things work, and once you get how my messy code works, it should go swimmingly.

>Why is it called _AtruSniper_?

I'm bad at naming things.
