--TO DO:
-- Add auto convert into the the Auto BP mode. 
-- Currently you have to convert manually and re-instruct BP use after converting to resume AutoBPing

-- Blood Pacts Groupings:	
--[[
     Put: /console gs c pact [PactType] as your macro in game
	 
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

-- Setup your Key Bindings here:  (These are optional, but nice toggles to have)
    windower.send_command('bind f7 gs c toggle mb')
    windower.send_command('bind f9 gs c avatar mode')
    windower.send_command('bind f10 gs c toggle auto')
    windower.send_command('bind f12 gs c toggle melee')

--[[
If you don't want the binds and prefer to macro them you can macro:

/console gs c avatar tank           toggle pet DT
/console gs c avatar acc            toggle pet acc mode
/console gs c avatar perp           toggle pet perp and refresh gear (this is default)
/console gs c avatar melee          toggle pet haste / DA / atk set (if you have one)

/console gs c toggle mb             toggle Glyphic Bracers +1 override in MAb set.
/console gs c toggle auto           toggle on / off auto BP recast under Apogee or Astral Conduit (repeat BP asap after 1rst cast)

]]
     
-- Setup your Gear Sets below:
function get_sets()
  
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
      
    sets.me = {}        -- leave this empty
    sets.avatar = {}    -- leave this empty
      
    -- Your idle set when you DON'T have an avatar out
    sets.me.idle = {
		main="Keraunos",
		sub="Oneiros Grip",
		ammo="Sancus Sachet +1",
		head="Con. Horn +1",
		body="Shomonjijoe +1",
		hands="Asteria Mitts +1",
		legs="Assid. Pants +1",
		feet="Baaya. Sabots +1",
		neck="Twilight Torque",
		waist="Regal Belt",
		left_ear="Gelos Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Vocane Ring",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10',}},
    }
      
    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
	
    }
      
    -----------------------//
    -- Perpetuation Related
    -----------------------
      
    -- Avatar's Out --  
    -- This is the base for all perpetuation scenarios, as seen below
    sets.avatar.perp = {
	
    }
  
    -- The following sets base off of perpetuation, so you can consider them idle sets.
    -- Set the relevant gear, bearing in mind it will overwrite the perpetuation item for that slot!
    sets.avatar["Carbuncle"] = {hands="Asteria Mitts +1"}
    sets.avatar["Cait Sith"] = {hands="Lamassu Mitts +1"}
    -- When we want our avatar to stay alive
    sets.avatar.tank = set_combine(sets.avatar.perp,{
	
    })
      
    -- When we want our avatar to shred
    sets.avatar.melee = set_combine(sets.avatar.perp,{

    })
      
    -- When we want our avatar to hit
    sets.avatar.acc = set_combine(sets.avatar.perp,{

    })
      
    -- When Avatar's Favor is active
    sets.avatar.favor = {
		head="Beckoner's Horn +1",
    }
      
    ----------------------------
    -- Summoning Skill Related
    -- Including all blood pacts
    ----------------------------
      
    -- + Summoning Magic. This is a base set for max skill and blood pacts and we'll overwrite later as and when we need to
    sets.avatar.skill = {
	
    }
      
    -------------------------
    -- Individual Blood Pacts
    -------------------------
      
    -- Physical damage
    sets.avatar.atk = set_combine(sets.avatar.skill,{
	
    })
	
    sets.avatar.pacc = set_combine(sets.avatar.atk,{
	
    })
      
    -- Magic Attack
    sets.avatar.mab = set_combine(sets.avatar.skill,{
	
    })
	
    sets.avatar.mb = set_combine(sets.avatar.mab,{hands="Glyphic Bracers +1"})
    
	-- Hybrid
    sets.avatar.hybrid = set_combine(sets.avatar.skill,{
	
    })
      
    -- Magic Accuracy
    sets.avatar.macc = set_combine(sets.avatar.skill,{

    })
      
    -- Buffs
    sets.avatar.buff = set_combine(sets.avatar.skill,{

    })
      
    -- Other
    sets.avatar.other = set_combine(sets.avatar.skill,{

    })
      
    -- Combat Related Sets
      
    -- Melee
    -- The melee set combines with perpetuation, because we don't want to be losing all our MP whilst we swing our Staff
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
    sets.me.melee = set_combine(sets.avatar.perp,{

    })
      
    -- Shattersoul. Weapon Skills do not work off perpetuation as it only stays equipped for a moment
    sets.me["Shattersoul"] = set_combine(sets.avatar.perp,{

    })
    sets.me["Garland of Bliss"] = set_combine(sets.avatar.perp,{

    })
      
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
      
    -- Generic Casting Set that all others take off of. Here you should add all your fast cast: 
    sets.precast.casting = {
	
    }   
      
    -- Summoning Magic Cast time - gear
    sets.precast.summoning = set_combine(sets.precast.casting,{

    })
      
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = set_combine(sets.precast.casting,{
		waist="Siegal Sash",
        neck="Melic Torque",
    })
  
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = set_combine(sets.precast.enhancing,{

    })
      
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = set_combine(sets.precast.casting,{
		back="Pahtli Cape"
    })
      
    ---------------------
    -- Ability Precasting
    ---------------------
      

    sets.precast.bp = {

    }
      
    -- Mana Cede
    sets.precast["Mana Cede"] = set_combine(sets.avatar.skill,{
		hands="Beckoner's Bracers",
    })
      
    -- Astral Flow  
    sets.precast["Astral Flow"] = {

    }
      
    ----------
    -- Midcast
    ----------
      
    -- We handle the damage and etc. in Pet Midcast later
      
    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {

    }
      
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{

    })
      
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{

    })
    -- Elemental Siphon, eg, Tatsumaki Thingies, Esper Stone, etc
    sets.midcast.siphon = set_combine(sets.avatar.skill,{
		feet="Beck. Pigaches"
    })
        
    -- Cure Potency
    sets.midcast.cure = set_combine(sets.midcast.casting,{
	
    })
      
    ------------
    -- Aftercast
    ------------
      
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have an avatar out?
  
end
