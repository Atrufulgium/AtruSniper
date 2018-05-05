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

Preemptive FAQ
=====
>Your datapack broke my map.

Make backups. Often. This goes for anything. I can't guarantee everything works. **If you found a bug, notify me!** And as said before, don't have anything valueable close to (0,0,0), as I use that area for storing blocks.

>Your code is a mess.

I know. It's hilarious not having loops explicitly; using recursion to achieve them doesn't help the readability. That, and function files seem to encourage _ignoring_ the DRY principle because if-statements and such count as commands and it's absolutely vital to bring that number down at any cost. So I'd rather have the ```loopthroughselection.mcfunction``` seperate for every tool so that I don't need to check which tool is used for every block.

>Your code is slow.

I know. All block placing functions seem to block- and lightupdate their surroundings. I wish that could be toggled.

>I have a suggestion.

Let me know! I can't have thought of everything that anyone'd want, so input is appreciated!

>Can I contribute?

Sure, once this github newbie gets how things work, and once you get how my messy code works, it should go swimmingly.

>Why is it called _AtruSniper_?

I'm bad at naming things.
