# Gearswap Templates

Don't modify any of the JOB.lua if you don't know what you are doing and why you are doing it. Reason is, the complicated code is in this file and none of the gearsets are. This way, if something doesn't work, it's either a bug (blame me!) or something wrong with your sets...

You will also need the files named as JOB_Gearsets.lua. This file is where your sets are, so you can modify this to create the sets you need without breaking the actual code. This is also where you can chose different keybinds than me. (I use f9-f10-f12)

Gearswap SMN template

*Features*
All the nifty things found in Aeyela's thread: http://www.ffxiah.com/forum/topic/47412/barebones-summoner-gearswap/

This Lua branched off Aeyela's and included the following:

All the bug fixes found in the above thread previously.
Keybind and support for cycling through avatar modes with 1 key.
Keybind for toggling autoBP
Keybind for toggling melee weapon lock
Avatar-agnostic Blood Pacts handling. (NEED SHORTCUTS ADDON)

Gearswap SCH template

*Features*

Custom commands:
        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.
                                        Light Arts              Dark Arts
        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
	
		Toggle Function: 
		gs c toggle melee 				Toggle Melee mode on / off and locking of weapons
		gs c toggle mb					Toggles Magic Burst Mode on / off.
		gs c toggle runspeed			Toggles locking on / off Herald's Gaiters
		gs c toggle idlemode			Toggles between Refresh and DT mode for idle set		
		
		Casting functions:
		these are to set fewer macros (1 cycle, 5 cast) to save macro space when playing lazily with controler
		
		gs c nuke element 				Cycles element type for nuking & SC
		gs c nuke t1					Cast tier 1 nuke of saved element 
		gs c nuke t2					Cast tier 2 nuke of saved element 
		gs c nuke t3					Cast tier 3 nuke of saved element 
		gs c nuke t4					Cast tier 4 nuke of saved element 
		gs c nuke t5					Cast tier 5 nuke of saved element 
		gs c nuke helix					Cast helix2 nuke of saved element 
		
		gs c sc tier					Cycles SC Tier (1 & 2)
		gs c sc castsc					Cast All the stuff to create a SC burstable by the nuke element set with '/console gs c nuke element'.
