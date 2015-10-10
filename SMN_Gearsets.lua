-- Setup your Key Bindings here: 	
	windower.send_command('bind f9 gs c avatar mode')
	windower.send_command('bind f10 gs c toggle auto')
	windower.send_command('bind f12 gs c toggle melee')
	
	
-- Setup your Gear Sets below:
function get_sets()
 
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
     
    sets.me = {}
    sets.avatar = {}
     
    -- Your idle set when you DON'T have an avatar out
    sets.me.idle = {
				main="Keraunos",sub="Oneiros Grip",ammo="Seraphicaller",
				head="Beckoner's Horn",neck="Caller's Pendant",ear1="Moonshade Earring",ear2="Handler's Earring +1",
				body="Shomonjijoe +1",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
				back="Aptitude Mantle",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet="Serpentes Sabots"
    }
     
    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
				main="Terra's Staff",sub="Oneiros Grip",ammo="Seraphicaller",
				head="Beckoner's Horn",neck="Caller's Pendant",ear1="Moonshade Earring",ear2="Handler's Earring +1",
				body="Shomonjijoe +1",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
				back="Aptitude Mantle",waist="Fucho-no-Obi",legs="Assid. Pants +1",feet="Serpentes Sabots"
    }
     
    -----------------------
    -- Perpetuation Related
    -----------------------
     
    -- Avatar's Out --  
    -- This is the base for all perpetuation scenarios, as seen below
    sets.avatar.perp = {
				main="Keraunos",sub="Oneiros Grip",ammo="Seraphicaller",
                head="Beckoner's Horn",neck="Caller's Pendant",ear1="Moonshade Earring",ear2="Handler's Earring +1",
                body="Shomonjijoe +1",hands="Glyphic Bracers",ring1="Evoker's Ring",ring2="Thurandaut Ring",
                back="Aptitude Mantle",waist="Lucidity Sash",legs="Assid. Pants +1",feet="Beckoner's Pigaches"
    }
 
    -- The following sets base off of perpetuation, so you can consider them idle sets.
    -- Set the relevant gear, bearing in mind it will overwrite the perpetuation item for that slot!
     
    -- When we want our avatar to stay alive
    sets.avatar.tank = set_combine(sets.avatar.perp,{
				head="Selenian Cap",hands="Artsieq Cuffs",ear1="Handler's Earring"
    })
     
    -- When we want our avatar to shred
    sets.avatar.melee = set_combine(sets.avatar.perp,{
				head="Convoker's Horn",hands="Glyphic Bracers"
    })
     
    -- When we want our avatar to hit
    sets.avatar.acc = set_combine(sets.avatar.perp,{hands="Glyphic Bracers"})
     
    -- When Avatar's Favori s active
    sets.avatar.favor = set_combine(sets.avatar.perp,{
				head="Beckoner's horn"
    })
     
    ----------------------------
    -- Summoning Skill Related
    -- Including all blood pacts
    ----------------------------
     
    -- + Summoning Magic. This is a base set for max skill and blood pacts and we'll overwrite later as and when we need to
    sets.avatar.skill = {
                head="Convoker's Horn",neck="Caller's Pendant",
                ear1="Smn. Earring",ear2="Andoaa earring",back="Conveyance Cape",
                body="Beckoner's Doublet",hands="Glyphic Bracers",ring1="Evoker's Ring",ring2="Fervor Ring",
                waist="Lucidity Sash",legs="Beckoner's spats",feet="Mdk. Crackows +1"
    }
     
    -------------------------
    -- Individual Blood Pacts
    -------------------------
     
    -- Physical damage
    sets.avatar.atk = set_combine(sets.avatar.skill,{
				main="Keraunos",sub="Oneiros Grip",ammo="Seraphicaller",
                head="Helios band",neck="Melic Torque",ear1="Gelos earring",ear2="Domesticator's Earring",
                body="Convo. Doublet",hands="Apogee Mitts",ring1="Evoker's Ring",ring2="Thurandaut ring",
                back="Conveyance cape",waist="Mujin obi",legs="Helios spats",feet="Glyphic Pigaches"
    })
     
    -- Magic Attack
    sets.avatar.mab = set_combine(sets.avatar.skill,{
				main="Keraunos",ammo="Seraphicaller",
                head="Helios band",neck="Eidolon Pendant",ear1="Smn. Earring",ear2="Gelos earring",
                body="Helios Jacket",hands="Apogee Mitts",ring1="Evoker's Ring",ring2="Speaker's Ring",
                back="Conveyance cape",waist="Caller's Sash",legs="Helios Spats",feet="Helios Boots"
    })
 
    -- Hybrid
    sets.avatar.hybrid = set_combine(sets.avatar.skill,{
				main="Keraunos",ammo="Seraphicaller",
                head="Helios band",neck="Eidolon Pendant",ear1="Smn. Earring",ear2="Gelos earring",
                body="Helios Jacket",hands="Apogee Mitts",ring1="Speaker's Ring",ring2="Thurandaut ring",
                back="Conveyance cape",waist="Mujin obi",legs="Helios Spats",feet="Helios Boots"
    })
     
    -- Magic Accuracy
    sets.avatar.macc = set_combine(sets.avatar.skill,{
				main="Keraunos",ammo="Seraphicaller",
                head="Helios band",neck="Eidolon Pendant",ear1="Smn. Earring",ear2="Gelos earring",
                body="Helios Jacket",hands="Apogee Mitts",ring1="Evoker's Ring",ring2="Speaker's Ring",
                back="Conveyance cape",waist="Lucidity Sash",legs="Helios Spats",feet="Helios Boots"
    })
     
    -- Buffs
    sets.avatar.buff = set_combine(sets.avatar.skill,{
				main="Keraunos",ammo="Esper Stone +1",
                head="Convoker's Horn",neck="Caller's Pendant",
                ear1="Smn. Earring",ear2="Andoaa earring",back="Conveyance Cape",
                body="Beckoner's Doublet",hands="Glyphic Bracers",ring1="Evoker's Ring",ring2="Fervor Ring",
                waist="Lucidity Sash",legs="Beckoner's spats",feet="Mdk. Crackows +1"			
    })
     
    -- Other
    sets.avatar.other = set_combine(sets.avatar.skill,{
				main="Keraunos",ammo="Seraphicaller",
                head="Convoker's Horn",neck="Caller's Pendant",ear1="Smn. Earring",ear2="Andoaa earring",
                back="Conveyance Cape",body="Beckoner's Doublet",hands="Glyphic Bracers",
                ring1="Evoker's Ring",ring2="Fervor Ring",waist="Lucidity Sash",
                legs="Beckoner's Spats",feet="Beckoner's Pigaches"
    })
     
    -- Combat Related Sets
     
    -- Melee
    -- The melee set combines with perpetuation, because we don't want to be losing all our MP whilst we swing our Staff
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
    sets.me.melee = set_combine(sets.avatar.perp,{})
     
    -- Shattersoul. Weapon Skills do not work off perpetuation as it only stays equipped for a moment
    sets.me["Shattersoul"] = {
                head="Helios Band",neck="Soil Gorget",ear1="Moldavite Earring",ear2="Bladeborn Earring",
                body="Hagondes Coat +1",hands="Helios Gloves",ring1="Spiral Ring",ring2="Tamas Ring",
                back="Pahtli Cape",waist="Soil Belt",legs="Assid. Pants +1",feet="Telchine Pigaches"
    }
    sets.me["Garland of Bliss"] = {
                head="Helios Band",ear1="Moldavite Earring",ear2="Bladeborn Earring",neck="Quanpur Necklace",
                body="Hagondes Coat +1",hands="Helios Gloves",ring1="Spiral Ring",ring2="Tamas Ring",
                back="Pahtli Cape",waist="Light Belt",legs="Hagondes Pants",feet="Helios Boots"
    }
     
    -- Feel free to add new weapon skills, make sure you spell it the same as in game. These are the only two I ever use though
 
    ---------------
    -- Casting Sets
    ---------------
     
    sets.precast = {}
    sets.midcast = {}
    sets.aftercast = {}
     
    ----------
    -- Precast
    ----------
     
    -- Generic Casting Set that all others take off of. Here you should add all your fast cast  
    sets.precast.casting = {
							head="Artsieq hat", ear2="Loquacious Earring",
							legs="Artsieq Hose", back="Swith cape"
    }   
     
    -- Summoning Magic Cast time - gear
    sets.precast.summoning = {
							head="Artsieq hat", ear2="Loquacious Earring",
							legs="Artsieq Hose", back="Swith cape"
    }
     
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = {
							head="Artsieq hat", ear2="Loquacious Earring",
							legs="Artsieq Hose", back="Swith cape"
    }
 
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = {
							head="Artsieq hat", ear2="Loquacious Earring",
							legs="Artsieq Hose", back="Swith cape"
    }
     
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = {
							head="Artsieq hat", ear2="Loquacious Earring",
							legs="Artsieq Hose", back="Swith cape"
    }
     
    ---------------------
    -- Ability Precasting
    ---------------------
     
    -- Blood Pact Ability Delay
    sets.precast.bp = {
                ammo="Seraphicaller", head="Convoker's Horn", body="Glyphic Doublet +1",
                hands="Glyphic Bracers", legs="Glyphic Spats", back="Conveyance cape", feet="Glyphic Pigaches"
    }
     
    -- Mana Cede
    sets.precast["Mana Cede"] = {hands="Beckoner's Bracers"}
     
    -- Astral Flow  
    sets.precast["Astral Flow"] = {head="Glyphic Horn"}
     
    -- Elemental Siphon, eg, Tatsumaki Thingies, Esper Stone, etc
    sets.precast.siphon = set_combine(sets.avatar.skill,{
			main="Soulscourge",
			head="Telchine Cap",neck="Caller's Pendant",
			body="Telchine Chas.",hands="Telchine Gloves",ring1="Evoker's Ring",ring2="Fervor Ring",
			back="Conveyance Cape",waist="Lucidity Sash",legs="Telchine Braconi",feet="Beckoner's Pigaches"
    })
     
    ----------
    -- Midcast
    ----------
     
    -- We handle the damage and etc. in Pet Midcast later
     
    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {
				head="Hagondes Hat",neck="Stoicheion Medal",ear1="Friomisi Earring",ear2="Hecate's Earring",
				body="Hagondes Coat +1",hands="Helios Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
				back="Toro Cape",legs="Hagondes Pants",feet="Helios Boots"
	}
     
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{})
     
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
				head="Convoker's Horn",body="Conv. Doublet +1",neck="Stone Gorget",
                legs="Shedir Seraweels",feet="Convoker's Pigaches", ear2="Earthcry Earring",waist="Siegel Sash"
    })
     
    -- Cure Potency
    sets.midcast.cure = set_combine(sets.midcast.casting,{
				main="Tefnut Wand",sub="Sors Shield",
				head="Nahtirah Hat",neck="Fylgja Torque +1",ear1="Roundel Earring",ear2="Loquacious Earring",
				body="Heka's Kalasiris",hands="Telchine Gloves",ring1="Prolix Ring",ring2="Sirona's Ring",
				back="Pahtli Cape",waist="Moepapa Stone",legs="Nares Trews",feet="Telchine Pigaches"
    })
     
    ------------
    -- Aftercast
    ------------
     
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have an avatar out?
 
end
