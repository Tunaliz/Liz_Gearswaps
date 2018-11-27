 
--[[
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
        gs c toggle melee               Toggle Melee mode on / off and locking of weapons
        gs c toggle mb                  Toggles Magic Burst Mode on / off.
        gs c toggle runspeed            Toggles locking on / off Herald's Gaiters
        gs c toggle idlemode            Toggles between Refresh and DT idle mode. Activating Sublimation JA will auto replace refresh set for sublimation set. DT set will superceed both.        
        gs c toggle regenmode           Toggles between Hybrid, Duration and Potency mode for regen set  
        gs c toggle nukemode           	Toggles between Normal and Accuracy mode for midcast Nuking sets (MB included)  
		
        Casting functions:
        these are to set fewer macros (1 cycle, 5 cast) to save macro space when playing lazily with controler
        
        gs c nuke cycle              	Cycles element type for nuking & SC
	gs c nuke cycledown		Cycles element type for nuking & SC in reverse order	
        gs c nuke t1                    Cast tier 1 nuke of saved element 
        gs c nuke t2                    Cast tier 2 nuke of saved element 
        gs c nuke t3                    Cast tier 3 nuke of saved element 
        gs c nuke t4                    Cast tier 4 nuke of saved element 
        gs c nuke t5                    Cast tier 5 nuke of saved element 
        gs c nuke helix                 Cast helix2 nuke of saved element 
        gs c nuke storm                 Cast Storm II buff of saved element  

 
        gs c sc tier                    Cycles SC Tier (1 & 2)
        gs c sc castsc                  Cast All the stuff to create a SC burstable by the nuke element set with '/console gs c nuke element'.
--]]

-------------------------------------------------------------------------------------------------------------------
-- Spell mappings allow defining a general category or description that each of sets of related
-- spells all fall under.
-------------------------------------------------------------------------------------------------------------------

spell_maps = {
    ['Cure']='Cure',['Cure II']='Cure',['Cure III']='Cure',['Cure IV']='Cure',['Cure V']='Cure',['Cure VI']='Cure',
    ['Full Cure']='Cure',
    ['Cura']='Curaga',['Cura II']='Curaga',['Cura III']='Curaga',
    ['Curaga']='Curaga',['Curaga II']='Curaga',['Curaga III']='Curaga',['Curaga IV']='Curaga',['Curaga V']='Curaga',
    -- Status Removal doesn't include Esuna or Sacrifice, since they work differently than the rest
    ['Poisona']='StatusRemoval',['Paralyna']='StatusRemoval',['Silena']='StatusRemoval',['Blindna']='StatusRemoval',['Cursna']='StatusRemoval',
    ['Stona']='StatusRemoval',['Viruna']='StatusRemoval',['Erase']='StatusRemoval',
    ['Barfire']='BarElement',['Barstone']='BarElement',['Barwater']='BarElement',['Baraero']='BarElement',['Barblizzard']='BarElement',['Barthunder']='BarElement',
    ['Barfira']='BarElement',['Barstonra']='BarElement',['Barwatera']='BarElement',['Baraera']='BarElement',['Barblizzara']='BarElement',['Barthundra']='BarElement',
    ['Raise']='Raise',['Raise II']='Raise',['Raise III']='Raise',['Arise']='Raise',
    ['Reraise']='Reraise',['Reraise II']='Reraise',['Reraise III']='Reraise',['Reraise IV']='Reraise',
    ['Protect']='Protect',['Protect II']='Protect',['Protect III']='Protect',['Protect IV']='Protect',['Protect V']='Protect',
    ['Shell']='Shell',['Shell II']='Shell',['Shell III']='Shell',['Shell IV']='Shell',['Shell V']='Shell',
    ['Protectra']='Protectra',['Protectra II']='Protectra',['Protectra III']='Protectra',['Protectra IV']='Protectra',['Protectra V']='Protectra',
    ['Shellra']='Shellra',['Shellra II']='Shellra',['Shellra III']='Shellra',['Shellra IV']='Shellra',['Shellra V']='Shellra',
    ['Regen']='Regen',['Regen II']='Regen',['Regen III']='Regen',['Regen IV']='Regen',['Regen V']='Regen',
    ['Refresh']='Refresh',['Refresh II']='Refresh',['Refresh III']='Refresh',
    ['Teleport-Holla']='Teleport',['Teleport-Dem']='Teleport',['Teleport-Mea']='Teleport',['Teleport-Altep']='Teleport',['Teleport-Yhoat']='Teleport',
    ['Teleport-Vahzl']='Teleport',['Recall-Pashh']='Teleport',['Recall-Meriph']='Teleport',['Recall-Jugner']='Teleport',
    ['Valor Minuet']='Minuet',['Valor Minuet II']='Minuet',['Valor Minuet III']='Minuet',['Valor Minuet IV']='Minuet',['Valor Minuet V']='Minuet',
    ["Knight's Minne"]='Minne',["Knight's Minne II"]='Minne',["Knight's Minne III"]='Minne',["Knight's Minne IV"]='Minne',["Knight's Minne V"]='Minne',
    ['Advancing March']='March',['Victory March']='March',
    ['Sword Madrigal']='Madrigal',['Blade Madrigal']='Madrigal',
    ["Hunter's Prelude"]='Prelude',["Archer's Prelude"]='Prelude',
    ['Sheepfoe Mambo']='Mambo',['Dragonfoe Mambo']='Mambo',
    ['Raptor Mazurka']='Mazurka',['Chocobo Mazurka']='Mazurka',
    ['Sinewy Etude']='Etude',['Dextrous Etude']='Etude',['Vivacious Etude']='Etude',['Quick Etude']='Etude',['Learned Etude']='Etude',['Spirited Etude']='Etude',['Enchanting Etude']='Etude',
    ['Herculean Etude']='Etude',['Uncanny Etude']='Etude',['Vital Etude']='Etude',['Swift Etude']='Etude',['Sage Etude']='Etude',['Logical Etude']='Etude',['Bewitching Etude']='Etude',
    ["Mage's Ballad"]='Ballad',["Mage's Ballad II"]='Ballad',["Mage's Ballad III"]='Ballad',
    ["Army's Paeon"]='Paeon',["Army's Paeon II"]='Paeon',["Army's Paeon III"]='Paeon',["Army's Paeon IV"]='Paeon',["Army's Paeon V"]='Paeon',["Army's Paeon VI"]='Paeon',
    ['Fire Carol']='Carol',['Ice Carol']='Carol',['Wind Carol']='Carol',['Earth Carol']='Carol',['Lightning Carol']='Carol',['Water Carol']='Carol',['Light Carol']='Carol',['Dark Carol']='Carol',
    ['Fire Carol II']='Carol',['Ice Carol II']='Carol',['Wind Carol II']='Carol',['Earth Carol II']='Carol',['Lightning Carol II']='Carol',['Water Carol II']='Carol',['Light Carol II']='Carol',['Dark Carol II']='Carol',
    ['Foe Lullaby']='Lullaby',['Foe Lullaby II']='Lullaby',['Horde Lullaby']='Lullaby',['Horde Lullaby II']='Lullaby',
    ['Fire Threnody']='Threnody',['Ice Threnody']='Threnody',['Wind Threnody']='Threnody',['Earth Threnody']='Threnody',['Lightning Threnody']='Threnody',['Water Threnody']='Threnody',['Light Threnody']='Threnody',['Dark Threnody']='Threnody',
    ['Fire Threnody II']='Threnody',['Ice Threnody II']='Threnody',['Wind Threnody II']='Threnody',['Earth Threnody II']='Threnody',['Lightning Threnody II']='Threnody',['Water Threnody II']='Threnody',['Light Threnody II']='Threnody',['Dark Threnody II']='Threnody',
    ['Battlefield Elegy']='Elegy',['Carnage Elegy']='Elegy',
    ['Foe Requiem']='Requiem',['Foe Requiem II']='Requiem',['Foe Requiem III']='Requiem',['Foe Requiem IV']='Requiem',['Foe Requiem V']='Requiem',['Foe Requiem VI']='Requiem',['Foe Requiem VII']='Requiem',
    ['Utsusemi: Ichi']='Utsusemi',['Utsusemi: Ni']='Utsusemi',['Utsusemi: San']='Utsusemi',
    ['Katon: Ichi'] = 'ElementalNinjutsu',['Suiton: Ichi'] = 'ElementalNinjutsu',['Raiton: Ichi'] = 'ElementalNinjutsu',
    ['Doton: Ichi'] = 'ElementalNinjutsu',['Huton: Ichi'] = 'ElementalNinjutsu',['Hyoton: Ichi'] = 'ElementalNinjutsu',
    ['Katon: Ni'] = 'ElementalNinjutsu',['Suiton: Ni'] = 'ElementalNinjutsu',['Raiton: Ni'] = 'ElementalNinjutsu',
    ['Doton: Ni'] = 'ElementalNinjutsu',['Huton: Ni'] = 'ElementalNinjutsu',['Hyoton: Ni'] = 'ElementalNinjutsu',
    ['Katon: San'] = 'ElementalNinjutsu',['Suiton: San'] = 'ElementalNinjutsu',['Raiton: San'] = 'ElementalNinjutsu',
    ['Doton: San'] = 'ElementalNinjutsu',['Huton: San'] = 'ElementalNinjutsu',['Hyoton: San'] = 'ElementalNinjutsu',
    ['Banish']='Banish',['Banish II']='Banish',['Banish III']='Banish',['Banishga']='Banish',['Banishga II']='Banish',
    ['Holy']='Holy',['Holy II']='Holy',['Drain']='Drain',['Drain II']='Drain',['Drain III']='Drain',['Aspir']='Aspir',['Aspir II']='Aspir',
    ['Absorb-Str']='Absorb',['Absorb-Dex']='Absorb',['Absorb-Vit']='Absorb',['Absorb-Agi']='Absorb',['Absorb-Int']='Absorb',['Absorb-Mnd']='Absorb',['Absorb-Chr']='Absorb',
    ['Absorb-Acc']='Absorb',['Absorb-TP']='Absorb',['Absorb-Attri']='Absorb',
    ['Enlight']='Enlight',['Enlight II']='Enlight',['Endark']='Endark',['Endark II']='Endark',
    ['Burn']='ElementalEnfeeble',['Frost']='ElementalEnfeeble',['Choke']='ElementalEnfeeble',['Rasp']='ElementalEnfeeble',['Shock']='ElementalEnfeeble',['Drown']='ElementalEnfeeble',
    ['Pyrohelix']='Helix',['Cryohelix']='Helix',['Anemohelix']='Helix',['Geohelix']='Helix',['Ionohelix']='Helix',['Hydrohelix']='Helix',['Luminohelix']='Helix',['Noctohelix']='DarkHelix',
	['Pyrohelix II']='Helix',['Cryohelix II']='Helix',['Anemohelix II']='Helix',['Geohelix II']='Helix',['Ionohelix II']='Helix',['Hydrohelix II']='Helix',['Luminohelix II']='Helix',['Noctohelix II']='DarkHelix',
    ['Firestorm']='Storm',['Hailstorm']='Storm',['Windstorm']='Storm',['Sandstorm']='Storm',['Thunderstorm']='Storm',['Rainstorm']='Storm',['Aurorastorm']='Storm',['Voidstorm']='Storm',
	['Firestorm II']='Storm',['Hailstorm II']='Storm',['Windstorm II']='Storm',['Sandstorm II']='Storm',['Thunderstorm II']='Storm',['Rainstorm II']='Storm',['Aurorastorm II']='Storm',['Voidstorm II']='Storm',
    ['Fire Maneuver']='Maneuver',['Ice Maneuver']='Maneuver',['Wind Maneuver']='Maneuver',['Earth Maneuver']='Maneuver',['Thunder Maneuver']='Maneuver',
    ['Water Maneuver']='Maneuver',['Light Maneuver']='Maneuver',['Dark Maneuver']='Maneuver',
}
				
-- Set Macros for your SCH's macro page, book.
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))
end

-- Required variables and  their initial value

nukes = {}
nukes.t1 = {['Earth']="Stone", 		['Water']="Water", 		['Air']="Aero", 	['Fire']="Fire", 	['Ice']="Blizzard", 	['Lightning']="Thunder", ['Light']="Thunder", ['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II", 	['Water']="Water II", 	['Air']="Aero II", 	['Fire']="Fire II", ['Ice']="Blizzard II", 	['Lightning']="Thunder II", ['Light']="Thunder II", ['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III", 	['Water']="Water III", 	['Air']="Aero III", ['Fire']="Fire III",['Ice']="Blizzard III", ['Lightning']="Thunder III", ['Light']="Thunder III", ['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV", 	['Water']="Water IV", 	['Air']="Aero IV", 	['Fire']="Fire IV", ['Ice']="Blizzard IV", 	['Lightning']="Thunder IV", ['Light']="Thunder IV", ['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V", 	['Water']="Water V", 	['Air']="Aero V", 	['Fire']="Fire V", 	['Ice']="Blizzard V", 	['Lightning']="Thunder V", ['Light']="Thunder V", ['Dark']="Blizzard V"}
nukes.helix = {['Earth']="Geohelix II",  ['Water']="Hydrohelix II", ['Air']="Anomehelix II",['Fire']="Pyrohelix II", ['Ice']="Cryohelix II", ['Lightning']="Ionohelix II", 	  ['Light']="Luminohelix II", ['Dark']="Noctohelix II"}
nukes.storm = {['Earth']="Sandstorm II", ['Water']="Rainstorm II", 	['Air']="Windstorm II",	['Fire']="Firestorm II", ['Ice']="Hailstorm II", ['Lightning']="Thunderstorm II", ['Light']="Aurorastorm II", ['Dark']="Voidstorm II"}

elements = 	{'Ice', 'Air', 'Dark', 'Light', 'Earth', 'Lightning', 'Water', 'Fire'}
tier1sc = 	{'Induration', 'Detonation', 'Compression', 'Transfixion', 'Scission', 'Impaction', 'Reverberation', 'Liquefaction'}
tier2sc = 	{'Distortion', 'Fragmentation', 'Gravitation', 'Fusion', 'Gravitation', 'Fragmentation', 'Distortion', 'Fusion'}
elemId = 0
elemId = elemId % 8
element = elements[elemId+1]
wantedSc = tier1sc[elemId+1]

scTier = 'Level 1'
meleeing = false
mBurst = false
runspeed = false
idleMode = 'refresh'
regenMode = 'regen'
nukeMode = 'normal'

-- Spam Chat to alert the user of what modes things are by default. 
windower.add_to_chat(211,'Welcome back to your SCH.lua')	
windower.add_to_chat(211,'Nuke now set to element type: '..tostring(element))	
windower.add_to_chat(211,'SC now set to: '..tostring(wantedSc))		
windower.add_to_chat(211,'Idle mode now set to: '..tostring(idleMode))	
windower.add_to_chat(211,'Regen mode now set to: '..tostring(regenMode))	
windower.add_to_chat(211,'Nuke mode now set to: '..tostring(nukeMode))	


include('SCH_Gearsets.lua')


Buff = 
	{
		['Ebullience'] = false, 
		['Rapture'] = false, 
		['Perpetuance'] = false,
		['Immanence'] = false,
		['Penury'] = false,
		['Parsimony'] = false,
		['Celerity'] = false,
		['Alacrity'] = false,
		['Klimaform'] = false,
		['Sublimation: Activated'] = false
	}
	
-- Get a spell mapping for the spell.
function get_spell_map(spell)
    return spell_maps[spell.name]
end

-- Reset the state vars tracking strategems.
function update_active_strategems(name, gain)
    Buff['Ebullience'] = buffactive['Ebullience'] or false
    Buff['Rapture'] = buffactive['Rapture'] or false
    Buff['Perpetuance'] = buffactive['Perpetuance'] or false
    Buff['Immanence'] = buffactive['Immanence'] or false
    Buff['Penury'] = buffactive['Penury'] or false
    Buff['Parsimony'] = buffactive['Parsimony'] or false
    Buff['Celerity'] = buffactive['Celerity'] or false
    Buff['Alacrity'] = buffactive['Alacrity'] or false
    Buff['Klimaform'] = buffactive['Klimaform'] or false
end

function update_sublimation()
    Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
end

function buff_refresh(name,buff_details)
	-- Update SCH statagems when a buff refreshes.
    update_active_strategems()
    update_sublimation()
end

function buff_change(name,gain,buff_details)
	-- Update SCH statagems when a buff is gained or lost.
    update_active_strategems()
    update_sublimation()
end
 
 
function precast(spell)
    -- Auto use Echo Drops if you are trying to cast while silenced --    
    if spell.action_type == 'Magic' and buffactive['Silence'] then 
        cancel_spell()
        send_command('input /item "Echo Drops" <me>')     
        add_to_chat(123, '****** ['..spell.name..' CANCELED - Using Echo Drops] ******')        
    end         
    -- Moving on to other types of magic
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
     
        -- Stoneskin Precast
        if spell.name == 'Stoneskin' then
         
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.precast.stoneskin)
             
        -- Cure Precast
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
         
            equip(sets.precast.cure)
             
        -- Enhancing Magic
        elseif spell.skill == 'Magic' then
         
            equip(sets.precast.enhancing)
             
            if spell.name == 'Sneak' then
                windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            end
        else
         
            -- For everything else we go with max fastcast
            equip(sets.precast.casting)
             
        end
         
    -- Job Abilities
    -- We use a catch all here, if the set exists for an ability, use it
    -- This way we don't need to write a load of different code for different abilities, just make a set
     
    elseif sets.precast[spell.name] then
        equip(sets.precast[spell.name])
    end
     
end
 
function midcast(spell)
  	-- Get the spell mapping, since we'll be passing it to various functions and checks.
	local spellMap = get_spell_map(spell)    
    -- No need to annotate all this, it's fairly logical. Just equips the relevant sets for the relevant magic
	if spell.name:match('Cure') or spell.name:match('Cura') then
		equip(sets.midcast.cure)
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancing)
		if spellMap == 'Storm' then
			equip(sets.midcast.storm)
		elseif spell.name:match('Protect') or spell.name:match('Shell') then
			equip({rring="Sheltered Ring"})
		elseif spell.name:match('Refresh') then
			equip(sets.midcast.refresh)
		elseif spell.name:match('Regen') then
			equip(sets.midcast[regenMode])
		elseif spell.name:match('Aquaveil') then
			equip(sets.midcast.aquaveil)
        end
	elseif spell.skill == 'Enfeebling Magic' and spell.type == 'BlackMagic' then -- to do: better rule for this.
		equip(sets.midcast.IntEnfeebling)
	elseif spell.skill == 'Enfeebling Magic' and spell.type == 'WhiteMagic' then -- to do: better rule for this.
		equip(sets.midcast.MndEnfeebling)
	elseif spell.type == 'BlackMagic' then
		if mBurst then
			equip(sets.midcast.MB[nukeMode])
		else
			equip(sets.midcast.nuking[nukeMode])
		end
	-- casting is basically enfeeble set.
	else
		equip(sets.midcast.casting)
	end
    -- And our catch all, if a set exists for this spell name, use it
    if sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])
	-- Catch all for tiered spells (use mapping), basically if no set for spell name, check set for spell mapping. AKA Drain works for all Drain tiers.
    elseif sets.midcast[spellMap] then
        equip(sets.midcast[spellMap])
    -- Remember those WS Sets we defined? :) sets.me["Insert Weaponskill"] are basically how I define any non-magic spells sets, aka, WS, JA, Idles, etc.
    elseif sets.me[spell.name] then
        equip(sets.me[spell.name])
    end
	
	-- Put the JSE in place.
    if spell.action_type == 'Magic' then
        apply_grimoire_bonuses(spell, action, spellMap)
	end

	-- Obi up for matching weather / day
	if spell.element == world.weather_element and spellMap ~= 'Helix'then
		equip(sets.midcast.Obi)
	end
	if spell.element == world.day_element and spellMap ~= 'Helix'then
		equip(sets.midcast.Obi)
	end
    if spell.name:match('Stoneskin') then
        equip(sets.midcast.stoneskin)
    end
	-- Dark based Helix gets "pixie hairpin +1"
    if spellMap == 'DarkHelix'then
        equip(sets.midcast.DarkHelix)
    end
    if spellMap == 'Helix' then
        equip(sets.midcast.Helix)
    end
end
 
function aftercast(spell) 
    -- Then initiate idle function to check which set should be equipped
    idle()
end

function idle()
    update_active_strategems()
    update_sublimation()
    -- This function is called after every action, and handles which set to equip depending on what we're doing
    -- We check if we're meleeing because we don't want to idle in melee gear when we're only engaged for trusts
	if meleeing and player.status=='Engaged' then   
        -- We're engaged and meleeing
        equip(sets.me.melee)        	
    else
		-- If we are building sublimation and don't idle in DT set then we swap refresh to sublimation style idle.
		if Buff['Sublimation: Activated'] and idleMode ~= 'dt' then
			equip(sets.me.idle.sublimation)
			windower.add_to_chat(3,"----- Idle mode Now focus on: Sublimation")
		-- We either are in DT set or we don't have sublimation ticking.
		else
			equip(sets.me.idle[idleMode])
			windower.add_to_chat(4,"----- Idle mode Now focus on: "..tostring(idleMode))
		end
    end
	-- Checks MP for Fucho-no-Obi
    if player.mpp < 51 then
        equip(sets.me.latent_refresh)
    end
end
 
function status_change(new,old)
    if new == 'Engaged' then  
        -- If we engage check our meleeing status
        idle()
         
    elseif new=='Resting' then
     
        -- We're resting
        equip(sets.me.resting)
	else
		idle()
    end
end

function self_command(command)
 
    local commandArgs = command
     
    if #commandArgs:split(' ') >= 2 then
        commandArgs = T(commandArgs:split(' '))
        if commandArgs[1] == 'toggle' then
            if commandArgs[2] == 'melee' then
             
                -- //gs c toggle melee will toggle melee mode on and off.
                -- This basically locks the slots that will cause you to lose TP if changing them,
                -- As well as equip your melee set if you're engaged
                if meleeing then
                    meleeing = false
                    enable('main','sub','ranged')
                    windower.add_to_chat(8,'----- Weapons Unlocked, WILL LOSE TP -----')
                    idle()
                else
                    meleeing=true
                    disable('main','sub','ranged')
                    windower.add_to_chat(8,'----- Weapons Locked, WILL NOT LOSE TP -----')
                    idle()
                end

            elseif commandArgs[2] == 'mb' then
                     
                -- //gs c toggle mb will toggle mb mode on and off.
                -- You need to toggle prioritisation yourself
                if mBurst then
                    mBurst = false
                    windower.add_to_chat(8,"----- Nuking MB Mode OFF -----")
                else
                    mBurst = true
                    windower.add_to_chat(8,"----- Nuking MB Mode ON -----")
                end
            elseif commandArgs[2] == 'runspeed' then
                if runspeed then
                    runspeed = false
                    windower.add_to_chat(8,"----- Taking Off Herald's Gaiters -----")   
                    enable('feet')
                    idle()
                else
                    runspeed = true 
                    windower.add_to_chat(8,"----- Locking On Herald's Gaiters -----")
                    equip({feet="Herald's Gaiters"})
                    disable('feet')                 
                end
            elseif commandArgs[2] == 'idlemode' then
                if idleMode == 'refresh' then
                    idleMode = 'dt'
                    idle()
                elseif idleMode == 'dt' then
                    idleMode = 'refresh'
                    idle()                         
                end
            elseif commandArgs[2] == 'regenmode' then
                if regenMode == 'regen' then
                    regenMode = 'regenduration'
                    windower.add_to_chat(8,"----- Regen Mode now focus on Duration -----") 
                elseif regenMode == 'regenduration' then
                    regenMode = 'regenpotency'
                    windower.add_to_chat(8,"----- Regen Mode now focus on Potency -----")        
                elseif regenMode == 'regenpotency' then
                    regenMode = 'regen'
                    windower.add_to_chat(8,"----- Regen Mode now focus on Hybrid -----")            
                end
            elseif commandArgs[2] == 'nukemode' then
                if nukeMode == 'normal' then
                    nukeMode = 'acc'
                    windower.add_to_chat(8,"----- Nuking Mode is now Accuracy -----") 
                elseif nukeMode == 'acc' then
                    nukeMode = 'normal'
                    windower.add_to_chat(8,"----- Nuking Mode is now Normal -----")                       
                end
			end
        end
		
		if commandArgs[1]:lower() == 'scholar' then
			handle_strategems(commandArgs)

		elseif commandArgs[1]:lower() == 'nuke' then
			if not commandArgs[2] then
				windower.add_to_chat(123,'No element type given.')
				return
			end
			
			local nuke = commandArgs[2]:lower()
			if nuke == 'cycle' then
				elemId = elemId+1
				elemId = elemId % 8
				element = elements[elemId+1]
				windower.add_to_chat(211,'Nuke now set to element type: '..tostring(element))	
				if scTier == 'Level 2' then
					wantedSc = tier2sc[elemId+1]
				elseif scTier == 'Level 1' then
					wantedSc = tier1sc[elemId+1]
				end
				windower.add_to_chat(211,'SC now set to: '..tostring(wantedSc))
			elseif nuke == 'cycledown' then
				elemId = elemId-1
				elemId = elemId % 8
				element = elements[elemId+1]
				windower.add_to_chat(211,'Nuke now set to element type: '..tostring(element))	
				if scTier == 'Level 2' then
					wantedSc = tier2sc[elemId+1]
				elseif scTier == 'Level 1' then
					wantedSc = tier1sc[elemId+1]
				end
				windower.add_to_chat(211,'SC now set to: '..tostring(wantedSc))
			elseif not nukes[nuke] then
				windower.add_to_chat(123,'Unknown element type: '..tostring(nuke))
				return				
			else		
				-- Leave out target; let Shortcuts auto-determine it.
				send_command('@input /ma "'..nukes[nuke][element]..'"')		
			end
		elseif commandArgs[1]:lower() == 'sc' then
			if not commandArgs[2] then
				windower.add_to_chat(123,'No element type given.')
				return
			end
			
			local arg = commandArgs[2]:lower()
			if arg == 'tier' then
				if scTier == 'Level 1' then
					scTier = 'Level 2'
					wantedSc = tier2sc[elemId]
					windower.add_to_chat(211,'SC Tier now set to: '..tostring(scTier))
					windower.add_to_chat(211,'SC now set to: '..tostring(wantedSc))		
				elseif scTier == 'Level 2' then
					scTier = 'Level 1'	
					wantedSc = tier1sc[elemId]
					windower.add_to_chat(211,'SC Tier now set to: '..tostring(scTier))
					windower.add_to_chat(211,'SC now set to: '..tostring(wantedSc))		
				end
			end
			if arg == 'castsc' then
				if wantedSc == 'Scission' then
					send_command('input /p Opening SC: Scission  MB: Stone; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Fire" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Scission  MB: Stone; input /ma "Stone" <t>')			
				elseif wantedSc == 'Reverberation' then
					send_command('input /p Opening SC: Reverberation  MB: Water; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Stone" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Reverberation  MB: Water; input /ma "Water" <t>')		
				elseif wantedSc == 'Detonation' then
					send_command('input /p Opening SC: Detonation  MB: Air; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Thunder" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Detonation  MB: Air; input /ma "Aero" <t>')	
				elseif wantedSc == 'Liquefaction' then
					send_command('input /p Opening SC: Liquefaction  MB: Fire; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Thunder" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Liquefaction  MB: Fire; input /ma "Fire" <t>')					
				elseif wantedSc == 'Induration' then
					send_command('input /p Opening SC: Induration  MB: Ice; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Water" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Induration  MB: Ice; input /ma "Blizzard" <t>')					
				elseif wantedSc == 'Impaction' then
					send_command('input /p Opening SC: Impaction  MB: Lightning; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Impaction  MB: Lightning; input /ma "Thunder" <t>')					
				elseif wantedSc == 'Compression' then
					send_command('input /p Opening SC: Compression  MB: Dark; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Compression  MB: Dark; input /ma "Noctohelix" <t>')					
				elseif wantedSc == 'Distortion' then
					send_command('input /p Opening SC: Distortion  MB: Water / Ice; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Luminohelix" <t>; wait 6.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Distortion  MB: Water / Ice; input /ma "Stone" <t>')					
				elseif wantedSc == 'Fragmentation' then
					send_command('input /p Opening SC: Fragmentation  MB: Lightning / Wind; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Fragmentation  MB: Wind / Lightning; input /ma "Water" <t>')					
				elseif wantedSc == 'Fusion' then
					send_command('input /p Opening SC: Fusion  MB: Light / Fire; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Fire" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Fusion  MB: Light / Fire; input /ma "Thunder" <t>')					
				elseif wantedSc == 'Gravitation' then
					send_command('input /p Opening SC: Gravitation  MB: Dark / Stone; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Aero" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Gravitation  MB: Dark / Stone; input /ma "Noctohelix" <t>')					
				elseif wantedSc == 'Transfixion' then
                    send_command('input /p Opening SC: Transfixion  MB: Light; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Noctohelix" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Transfixion  MB: Light; input /ma "Luminohelix" <t>')
                end
			end
		end
    end
end

-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
    if Buff['Perpetuance'] and spell.type =='WhiteMagic' and spell.skill == 'Enhancing Magic' then
        equip(sets.buff['Perpetuance'])
    end
    if Buff['Rapture'] and (spellMap == 'Cure' or spellMap == 'Curaga') then
        equip(sets.buff['Rapture'])
    end
    if spell.skill == 'Elemental Magic' and spellMap ~= 'ElementalEnfeeble' then
        if Buff['Ebullience'] and spell.english ~= 'Impact' then
            equip(sets.buff['Ebullience'])
        end
        if Buff['Immanence'] then
            equip(sets.buff['Immanence'])
        end
        if Buff['Klimaform'] and spell.element == world.weather_element then
            equip(sets.buff['Klimaform'])
        end
    end

    if Buff['Penury'] then equip(sets.buff['Penury']) end
    if Buff['Parsimony'] then equip(sets.buff['Parsimony']) end
    if Buff['Celerity'] then equip(sets.buff['Celerity']) end
    if Buff['Alacrity'] then equip(sets.buff['Alacrity']) end
end

-- General handling of strategems in an Arts-agnostic way.
-- Format: gs c scholar <strategem>

function handle_strategems(cmdParams)
    -- cmdParams[1] == 'scholar'
    -- cmdParams[2] == strategem to use

    if not cmdParams[2] then
        add_to_chat(123,'Error: No strategem command given.')
        return
    end
    local strategem = cmdParams[2]:lower()

    if strategem == 'light' then
        if buffactive['light arts'] then
            send_command('input /ja "Addendum: White" <me>')
        elseif buffactive['addendum: white'] then
            add_to_chat(122,'Error: Addendum: White is already active.')
        else
            send_command('input /ja "Light Arts" <me>')
        end
    elseif strategem == 'dark' then
        if buffactive['dark arts'] then
            send_command('input /ja "Addendum: Black" <me>')
        elseif buffactive['addendum: black'] then
            add_to_chat(122,'Error: Addendum: Black is already active.')
        else
            send_command('input /ja "Dark Arts" <me>')
        end
    elseif buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: White" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    elseif buffactive['dark arts']  or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('input /ja Immanence <me>')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: Black" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    else
        add_to_chat(123,'No arts has been activated yet.')
    end
end

-- Gets the current number of available strategems based on the recast remaining
-- and the level of the sch.
function get_current_strategem_count()
    -- returns recast in seconds.
    local allRecasts = windower.ffxi.get_ability_recasts()
    local stratsRecast = allRecasts[231]

    local maxStrategems = math.floor(player.main_job_level + 10) / 20
    -- assuming level 90+ and if not 550JP replace 5*33 by 5*45 below
    local fullRechargeTime = 5*33

    local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

    return currentCharges
end
