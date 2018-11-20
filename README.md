# Gearswap Templates

Don't modify any of the JOB.lua if you don't know what you are doing and why you are doing it. Reason is, the complicated code is in this file and none of the gearsets are. This way, if something doesn't work, it's either a bug (blame me!) or something wrong with your sets...

You will also need the files named as JOB_Gearsets.lua. This file is where your sets are, so you can modify this to create the sets you need without breaking the actual code. This is also where you can chose different keybinds than me. (I use f9-f10-f12)

### Gearswap SMN template
*Requires Shortcuts Add-On*

*Notable Features*

All the nifty things found in Aeyela's thread: http://www.ffxiah.com/forum/topic/47412/barebones-summoner-gearswap/

This Lua branched off Aeyela's and included the following:

* Keybind and support for cycling through avatar modes with 1 key.
* Keybind for toggling autoBP
* Keybind for toggling melee weapon lock
* Avatar-agnostic Blood Pacts handling.

### Gearswap SCH template
*Requires Shortcuts Add-On*

More info: https://www.ffxiah.com/node/352

*Notable Features*

* Keybind support for various commands
* Grimoire agnostic stratagem (so you can make 1 macro that works in both arts)
  - macro: /console gs c scholar aoe
    - will cast Accession in LA or Manifestation in DA, etc.
  - See SCH_Gearsets.lua for the list of commands.
* Auto Echo drops
* Refresh or DT toggle for idle set
* Cycle function to go through and save an Element 
  - All nuke/helix macro will cast saved element
  - Example Macro: /console gs c nuke t5
    - Cast tier 5 nuke of saved element
    - Support t1 to t5 and helix
* All in one SC function 
  - Sc based on saved Element, toggle function for SC level 1 or 2
  - Macro: /console gs c sc castsc
    - Cast a SC burstable by saved element
  - Macro: /console gs c sc tier
    - Changes between T1 or T2 SC

