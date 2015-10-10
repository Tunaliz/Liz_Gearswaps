-- Setup your Key Bindings here:    
    windower.send_command('bind f9 gs c avatar mode')
    windower.send_command('bind f10 gs c toggle auto')
    windower.send_command('bind f12 gs c toggle melee')
     
     
-- Setup your Gear Sets below:
function get_sets()
  
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
      
    sets.me = {}        -- leave this empty
    sets.avatar = {}    -- leave this empty
      
    -- Your idle set when you DON'T have an avatar out
    sets.me.idle = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -- Your MP Recovered Whilst Resting Set
    sets.me.resting = { 
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -----------------------
    -- Perpetuation Related
    -----------------------
      
    -- Avatar's Out --  
    -- This is the base for all perpetuation scenarios, as seen below
    sets.avatar.perp = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
  
    -- The following sets base off of perpetuation, so you can consider them idle sets.
    -- Set the relevant gear, bearing in mind it will overwrite the perpetuation item for that slot!
      
    -- When we want our avatar to stay alive
    sets.avatar.tank = set_combine(sets.avatar.perp,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- When we want our avatar to shred
    sets.avatar.melee = set_combine(sets.avatar.perp,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- When we want our avatar to hit
    sets.avatar.acc = set_combine(sets.avatar.perp,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- When Avatar's Favori s active
    sets.avatar.favor = set_combine(sets.avatar.perp,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    ----------------------------
    -- Summoning Skill Related
    -- Including all blood pacts
    ----------------------------
      
    -- + Summoning Magic. This is a base set for max skill and blood pacts and we'll overwrite later as and when we need to
    sets.avatar.skill = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -------------------------
    -- Individual Blood Pacts
    -------------------------
      
    -- Physical damage
    sets.avatar.atk = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Magic Attack
    sets.avatar.mab = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
  
    -- Hybrid
    sets.avatar.hybrid = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Magic Accuracy
    sets.avatar.macc = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Buffs
    sets.avatar.buff = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Other
    sets.avatar.other = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Combat Related Sets
      
    -- Melee
    -- The melee set combines with perpetuation, because we don't want to be losing all our MP whilst we swing our Staff
    -- Anything you equip here will overwrite the perpetuation/refresh in that slot.
    sets.me.melee = set_combine(sets.avatar.perp,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Shattersoul. Weapon Skills do not work off perpetuation as it only stays equipped for a moment
    sets.me["Shattersoul"] = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
    sets.me["Garland of Bliss"] = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
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
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }   
      
    -- Summoning Magic Cast time - gear
    sets.precast.summoning = set_combine(sets.precast.casting,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Enhancing Magic, eg. Siegal Sash, etc
    sets.precast.enhancing = set_combine(sets.precast.casting,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
  
    -- Stoneskin casting time -, works off of enhancing -
    sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Curing Precast, Cure Spell Casting time -
    sets.precast.cure = set_combine(sets.precast.casting,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    ---------------------
    -- Ability Precasting
    ---------------------
      
    -- Blood Pact Ability Delay
    sets.precast.bp = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -- Mana Cede
    sets.precast["Mana Cede"] = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -- Astral Flow  
    sets.precast["Astral Flow"] = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -- Elemental Siphon, eg, Tatsumaki Thingies, Esper Stone, etc
    sets.precast.siphon = set_combine(sets.avatar.skill,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    ----------
    -- Midcast
    ----------
      
    -- We handle the damage and etc. in Pet Midcast later
      
    -- Whatever you want to equip mid-cast as a catch all for all spells, and we'll overwrite later for individual spells
    sets.midcast.casting = {
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    }
      
    -- Enhancing
    sets.midcast.enhancing = set_combine(sets.midcast.casting,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Stoneskin
    sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    -- Cure Potency
    sets.midcast.cure = set_combine(sets.midcast.casting,{
        main="",
        sub="",
        ranged="",
        ammo="",
        head="",
        neck="",
        lear="",
        rear="",
        body="",
        hands="",
        lring="",
        rring="",
        back="",
        waist="",
        legs="",
        feet=""
    })
      
    ------------
    -- Aftercast
    ------------
      
    -- I don't use aftercast sets, as we handle what to equip later depending on conditions using a function, eg, do we have an avatar out?
  
end
