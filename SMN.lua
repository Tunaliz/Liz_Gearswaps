 include('SMN_Gearsets.lua')
 -- Blood Pacts Groupings:	
--[[
     Put: /console gs c pact [PactType] as your macro
	 
        PactType can be one of:
            cure
            curaga
            buffOffense
            buffDefense
            buffSpecial
            debuff1
            debuff2
            sleep
            nuke2
            nuke4
            bp70
            bp75 (merits and lvl 75-80 pacts)
			bp99
            astralflow
--]]
	windower.send_command('bind f9 gs c avatar mode')
	pacts = {}
    pacts.cure = {['Carbuncle']='Healing Ruby'}
    pacts.curaga = {['Carbuncle']='Healing Ruby II', ['Garuda']='Whispering Wind', ['Leviathan']='Spring Water'}
    pacts.buffoffense = {['Carbuncle']='Glittering Ruby', ['Ifrit']='Crimson Howl', ['Garuda']='Hastega II', ['Ramuh']='Rolling Thunder',
        ['Fenrir']='Ecliptic Growl', ['Shiva']='Crystal Blessing'}
    pacts.buffdefense = {['Carbuncle']='Shining Ruby', ['Shiva']='Frost Armor', ['Garuda']='Aerial Armor', ['Titan']='Earthen Ward',
        ['Ramuh']='Lightning Armor', ['Fenrir']='Ecliptic Howl', ['Diabolos']='Noctoshield', ['Cait Sith']='Reraise II'}
    pacts.buffspecial = {['Ifrit']='Inferno Howl', ['Garuda']='Fleet Wind', ['Titan']='Earthen Armor', ['Diabolos']='Dream Shroud',
        ['Carbuncle']='Soothing Ruby', ['Fenrir']='Heavenward Howl', ['Cait Sith']='Raise II'}
    pacts.debuff1 = {['Shiva']='Diamond Storm', ['Ramuh']='Shock Squall', ['Leviathan']='Tidal Roar', ['Fenrir']='Lunar Cry',
        ['Diabolos']='Pavor Nocturnus', ['Cait Sith']='Eerie Eye'}
    pacts.debuff2 = {['Shiva']='Sleepga', ['Leviathan']='Slowga', ['Fenrir']='Lunar Roar', ['Diabolos']='Somnolence', ['Ramuh']='Thunderspark'}
    pacts.sleep = {['Shiva']='Sleepga', ['Diabolos']='Nightmare', ['Cait Sith']='Mewing Lullaby'}
    pacts.nuke2 = {['Ifrit']='Fire II', ['Shiva']='Blizzard II', ['Garuda']='Aero II', ['Titan']='Stone II',
        ['Ramuh']='Thunder II', ['Leviathan']='Water II'}
    pacts.nuke4 = {['Ifrit']='Fire IV', ['Shiva']='Blizzard IV', ['Garuda']='Aero IV', ['Titan']='Stone IV',
        ['Ramuh']='Thunder IV', ['Leviathan']='Water IV'}
    pacts.bp70 = {['Ifrit']='Flaming Crush', ['Shiva']='Rush', ['Garuda']='Predator Claws', ['Titan']='Mountain Buster',
        ['Ramuh']='Chaotic Strike', ['Leviathan']='Spinning Dive', ['Carbuncle']='Meteorite', ['Fenrir']='Eclipse Bite',
        ['Diabolos']='Nether Blast',['Cait Sith']='Regal Gash'}
    pacts.bp75 = {['Ifrit']='Meteor Strike', ['Shiva']='Heavenly Strike', ['Garuda']='Wind Blade', ['Titan']='Geocrush',
        ['Ramuh']='Thunderstorm', ['Leviathan']='Grand Fall', ['Carbuncle']='Holy Mist', ['Fenrir']='Lunar Bay',
        ['Diabolos']='Night Terror', ['Cait Sith']='Level ? Holy'}
	pacts.bp99 = {['Ifrit']='Conflag Strike', ['Ramuh']='Volt Strike', ['Titan']='Crag Throw', ['Fenrir']='Impact', ['Diabolos']='Blindside'}
    pacts.astralflow = {['Ifrit']='Inferno', ['Shiva']='Diamond Dust', ['Garuda']='Aerial Blast', ['Titan']='Earthen Fury',
        ['Ramuh']='Judgment Bolt', ['Leviathan']='Tidal Wave', ['Carbuncle']='Searing Light', ['Fenrir']='Howling Moon',
        ['Diabolos']='Ruinous Omen', ['Cait Sith']="Altana's Favor"}

--		
		
bp_physical=S{	'Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails',
				'Moonlit Charge','Crescent Fang','Rock Buster','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite',
				'Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Crag Throw','Volt Strike'}

bp_hybrid=S{	'Burning Strike','Flaming Crush'}

bp_magical=S{	'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon',
				'Ruinous Omen','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Somnolence',
				'Meteorite','Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Nether Blast','Meteor Strike',
				'Geocrush','Grand Fall','Wind Blade','Heavenly Strike','Thunderstorm','Level ? Holy','Holy Mist','Lunar Bay',
				'Night Terror','Conflagration Strike'}
				
bp_debuff=S{	'Lunar Cry','Mewing Lullaby','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Eerie Eye','Tidal Roar',
				'Diamond Storm','Shock Squall','Pavor Nocturnus'}
				
bp_buff=S{		'Shining Ruby','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Hastega','Noctoshield',
				'Ecliptic Howl','Dream Shroud','Earthen Armor','Fleet Wind','Inferno Howl','Soothing Ruby','Heavenward Howl',
				'Soothing Current','Hastega II','Crystal Blessing'}

bp_other=S{		'Healing Ruby','Raise II','Aerial Armor','Reraise II','Whispering Wind','Glittering Ruby','Earthen Ward','Spring Water','Healing Ruby II'} 

AvatarList=S{	'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle','Fire Spirit','Air Spirit','Ice Spirit',
				'Thunder Spirit','Light Spirit','Dark Spirit','Earth Spirit','Water Spirit','Cait Sith','Alexander','Odin','Atomos'}
				
spirit_element={Fire='Fire Spirit',Earth='Earth Spirit',Water='Water Spirit',Wind='Air Spirit',Ice='Ice Spirit',Lightning='Thunder Spirit',
				Light='Light Spirit',Dark='Dark Spirit'}spirit_conflict={Fire='Ice',Earth='Lightning',Water='Fire',Wind='Earth',Ice='Wind',
				Lightning='Water',Light='Dark',Dark='Light'}
				
-- Set Macros for your SMN's macro page, book.
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))

end
set_macros(1,2) -- Sheet, Book

-- Required variables and  their initial value
meleeing = false
autobp = false
favor = false
mode = "perp"
savedMode = "perp"
 
 
 function precast(spell)
 
    -- Don't swap if we're in the middle of something or our pet's doing something
    -- Stops macro spam from interfering with an action GS is already handling
    if midaction() or pet_midaction() then
		return
    end
    if buffactive['Astral Conduit'] then
        return
    end

    -- If we're doing a blood pact, equip our delay set IF Apogee or Astral Conduit are not active
    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and not (buffactive['Astral Conduit'] or buffactive['Apogee']) then
     
        equip(sets.precast.bp)
         
    elseif spell.type == 'SummonerPact' then
     
        -- This chunk of code handles Elemental Siphon. It will look at the current day and weather and cancel the spell to summon
        -- the right elemental. Your elemental siphon macro should summon a Dark Spirit to trigger this check
         
        -- These use the included lists in global.lua to determine the right spirit to summon
             
        if spell.name == 'Dark Spirit' then
            if world.weather_element == 'Dark' then
             
                -- Dark Weather is active, lets the spell go ahead and equips summoning precast
                equip(sets.precast.summoning)
                 
            elseif world.weather_element ~= 'None' and spirit_conflict[world.day_element] ~= world.weather_element then
             
                -- It's not dark weather but there is some weather up, cancels dark and summons the right spirit
                cancel_spell()
                send_command('input /ma "%s" <me>':format(spirit_element[world.weather_element]))
                equip(sets.precast.summoning)
                 
            elseif world.day_element == 'Dark' then
             
                -- It's darksday so allow the dark spirit to go ahead and equip summoning
                equip(sets.precast.summoning)
                 
            else
             
                -- There is no weather up and it's not darksday, so summon the current day's spirit
                cancel_spell()              
                send_command('input /ma "%s" <me>':format(spirit_element[world.day_element]))
                equip(sets.precast.summoning)
                 
            end
        else
         
            -- We're not summoning Dark Spirit, so we don't want to Siphon, which means we're summoning an avatar
            equip(sets.precast.summoning)
             
        end
         
    -- Moving on to other types of magic
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.name == AvatarList:contains(spell.name) then
     
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
         
    -- Summoner Abilities
    -- We use a catch all here, if the set exists for an ability, use it
    -- This way we don't need to write a load of different code for different abilities, just make a set
     
    elseif sets.precast[spell.name] then
        equip(sets.precast[spell.name])
    end
     
end
 
function midcast(spell)
      
    -- No need to annotate all this, it's fairly logical. Just equips the relevant sets for the relevant magic
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'Stoneskin' then
            equip(sets.midcast.stoneskin)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.midcast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.midcast.enhancing)
            if spell.name:match('Protect') or spell.name:match('Shell') then
                equip({rring="Sheltered Ring"})
            end
        else
            equip(sets.midcast.casting)
        end
    elseif spell.name == 'Elemental Siphon' then
     
        -- Siphon Set
        equip(sets.midcast.siphon)
         
        -- Checks if pet matches weather
        --if pet.element == world.weather_element then
        --    equip(sets.midcast.siphon,{main="Chatoyant Staff"--[[Take advantage of the weather boost]]})
        --end
         
    -- And our catch all, if a set exists for this spell use it
    elseif sets.midcast[spell.name] then
        equip(sets.midcast[spell.name])
         
    -- Remember those WS Sets we defined? :)
    elseif sets.me[spell.name] then
        equip(sets.me[spell.name])
    end
end
 
function aftercast(spell)
 
    -- If our pet is doing something, prevents us swapping equipment too early
    if midaction() or pet_midaction() then
		return
    end
    if buffactive['Astral Conduit'] then
        return
    end
     
    -- If not a blood pact or summon
    if spell and (not spell.type or not string.find(spell.type,'BloodPact') and not AvatarList:contains(spell.name) or spell.interrupted) then
     
        -- Then initiate idle function to check which set should be equipped
        idle(pet)
         
    end
end

function pet_midcast(spell)
 
    -- Our pet is doing something
    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
     
        -- We're going to check the lists in global.lua for matches and equip the relevant sets
         
        if bp_physical:contains(spell.name) then
         
            equip(sets.avatar.atk)
             
        elseif bp_hybrid:contains(spell.name) then
         
            equip(sets.avatar.hybrid)
            if pet.name == 'Ifrit' then
                equip({rring="Fervor Ring"})--[[Change rring to lring if you put Evoker's on your right hand]]
            end
             
        elseif bp_magical:contains(spell.name) then
         
            equip(sets.avatar.mab)
            if pet.name == 'Ifrit' then
                equip({rring="Fervor Ring"})--[[Change rring to lring if you put Evoker's on your right hand]]
            end
 
        elseif bp_debuff:contains(spell.name) then
         
            equip(sets.avatar.macc)
             
        elseif bp_buff:contains(spell.name) then
         
            equip(sets.avatar.buff)
             
        elseif bp_other:contains(spell.name) then
         
            equip(sets.avatar.other)
             
        elseif spell.name == 'Perfect Defense' then
         
            equip(sets.avatar.skill)
             
        else
         
            equip(sets.avatar.skill)
             
        end
    end 
end
 
function pet_aftercast(spell)
     
    -- Pet aftercast is simply a check for whether Conduit and Apogee are up, and then a call to our aftercast function
    -- We have a variable called autobp that we set to true or false with commands to auto repeat BPs for us
    if (buffactive['Apogee'] or buffactive['Astral Conduit']) and autobp then
        send_command('input /pet "%s" <t>':format(spell.name))
        return
    end
    
    idle(pet)
     
end
 
function idle(pet)
 
    -- This function is called after every action, and handles which set to equip depending on what we're doing
    -- We check if we're meleeing because we don't want to idle in melee gear when we're only engaged for trusts
     
    if favor and pet.isvalid then
     
        -- Avatar's favor takes priority!
        equip(sets.avatar.favor)
         
    elseif meleeing and player.status=='Engaged' then
     
        -- We're both engaged and meleeing
        equip(sets.me.melee)
         
    elseif pet.isvalid then
         
        -- We have a pet out but we're not meleeing, set the right idle set
        equip(sets.avatar[mode])
 
    else
     
        -- We're not meleeing and we have no pet out
        equip(sets.me.idle)
         
    end
end
 
function status_change(new,old)
    if new == 'Engaged' then
     
        -- If we engage check our meleeing status
        idle(pet)
         
    elseif new=='Resting' then
     
        -- We're resting
        equip(sets.me.resting)
	else
		idle(pet)
    end
end
 
function pet_change(pet,gain)
 
    -- When we summon or release an avatar
    idle(pet)
 
end
 
 
function self_command(command)
 
    local commandArgs = command
     
    -- This command takes //gs c avatar mode, where mode is what you want, eg, tank, acc, melee, etc
    if #commandArgs:split(' ') >= 2 then
        commandArgs = T(commandArgs:split(' '))
		if commandArgs[1] == 'avatar' and pet.isvalid then
			if commandArgs[2] then
				mode = tostring(commandArgs[2])
				if mode == 'mode' then
					if savedMode == 'perp' then
					   mode = 'tank'
					   savedMode = 'tank'
					elseif savedMode == 'tank' then
					   mode = 'melee'
					   savedMode = 'melee'
					elseif savedMode == 'melee' then
					   mode = 'acc'
					   savedMode = 'acc'
					elseif savedMode == 'acc' then
					   mode = 'perp'
					   savedMode = 'perp'
					end
				end    
				equip(sets.avatar[mode])
				windower.add_to_chat(8,'----- Avatar set to '..mode..' mode! -----')
			end
		elseif commandArgs[1] == 'toggle' then
            if commandArgs[2] == 'auto' then
             
                -- //gs c toggle auto will toggle auto blood pacts on and off. Auto blood pact will make your GS repeat BPs under Apogee or Conduit
                -- And by repeat I mean repeat. If Conduit is up, it will SPAM the BP until Conduit is down
                if autobp then
                    autobp = false
                    windower.add_to_chat(8,'----- Auto BP mode Disabled -----')
                else
                    autobp = true
                    windower.add_to_chat(8,'----- Auto BP mode Enabled -----')
                end
            elseif commandArgs[2] == 'melee' then
             
                -- //gs c toggle melee will toggle melee mode on and off.
                -- This basically locks the slots that will cause you to lose TP if changing them,
                -- As well as equip your melee set if you're engaged
 
                if meleeing then
                    meleeing = false
                    enable('main','sub','ranged')
                    windower.add_to_chat(8,'----- Weapons Unlocked, WILL LOSE TP -----')
                    idle(pet)
                else
                    meleeing=true
                    disable('main','sub','ranged')
                    windower.add_to_chat(8,'----- Weapons Locked, WILL NOT LOSE TP -----')
                    idle(pet)
                end
                 
            elseif commandArgs[2] == 'favor' then
                     
                -- //gs c toggle favor will toggle Favor mode on and off.
                -- It won't automatically toggle, as some people like having favor active without the gear swaps for maximum effectiveness
                -- You need to toggle prioritisation yourself
                if favor then
                    favor = false
                    windower.add_to_chat(8,"----- Avatar's Favor Mode OFF -----")
                else
                    favor = true
                    windower.add_to_chat(8,"----- Avatar's Favor Mode ON -----")
                end
                 
            end
		-- Handles executing blood pacts in a generic, avatar-agnostic way.
		-- //gs c pact [pacttype]
		elseif commandArgs[1]:lower() == 'pact' then
			if not pet.isvalid then
					windower.add_to_chat(122,'No avatar currently available. Returning to default macro set.')
					set_macros(1,2)
				return
			end
		 
			if not commandArgs[2] then
				windower.add_to_chat(123,'No pact type given.')
				return
			end
		 
			local pact = commandArgs[2]:lower()
		 
			if not pacts[pact] then
				windower.add_to_chat(123,'Unknown pact type: '..tostring(pact))
				return
			end
		 
			if pacts[pact][pet.name] then
				if pact == 'astralflow' and not buffactive['astral flow'] then
					windower.add_to_chat(122,'Cannot use Astral Flow pacts at this time.')
					return
				end
		 
				-- Leave out target; let Shortcuts auto-determine it.
				send_command('@input /pet "'..pacts[pact][pet.name]..'"')
			else
				windower.add_to_chat(122,pet.name..' does not have a pact of type ['..pact..'].')
			end
        end
    end
end
