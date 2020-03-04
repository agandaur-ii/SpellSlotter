# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.delete_all
Player.reset_pk_sequence
Party.delete_all
Party.reset_pk_sequence
Characterspell.delete_all
Characterspell.reset_pk_sequence
Character.delete_all
Character.reset_pk_sequence
Spell.delete_all
Spell.reset_pk_sequence
Alignment.delete_all
Alignment.reset_pk_sequence
Background.delete_all
Background.reset_pk_sequence
Race.delete_all
Race.reset_pk_sequence
Characterclassjoin.delete_all
Characterclassjoin.reset_pk_sequence
Characterclass.delete_all
Characterclass.reset_pk_sequence
Classspell.delete_all
Classspell.reset_pk_sequence

chris = Player.create(name: "Chris")
elaine = Player.create(name: "Elaine")
adam = Player.create(name: "Adam")
dan = Player.create(name: "Dan")
josh = Player.create(name: "Josh")
nick = Player.create(name: "Nick")
doug = Player.create(name: "Doug")
jack = Player.create(name: "Jack")
emma = Player.create(name: "Emma")
katie = Player.create(name: "Katie")

dof = Party.create(name: "Dozens of Flagons", dm_id: dan.id)
tti = Party.create(name: "The Turtle Isles", dm_id: doug.id) 

dragonborn = Race.create(name: "Dragonborn")
dwarf = Race.create(name: "Dwarf")
elf = Race.create(name: "Elf")
gnome = Race.create(name: "Gnome")
half_elf = Race.create(name: "Half-elf")
half_orc = Race.create(name: "Half-orc")
halfling = Race.create(name: "Halfling")
human = Race.create(name: "Human")
tiefling = Race.create(name: "Tiefling")


barbarian = Characterclass.create(name: "Barbarian")
bard = Characterclass.create(name: "Bard")
cleric = Characterclass.create(name: "Cleric")
druid = Characterclass.create(name: "Druid")
fighter = Characterclass.create(name: "Fighter")
monk = Characterclass.create(name: "Monk")
paladin = Characterclass.create(name: "Paladin")
ranger = Characterclass.create(name: "Ranger")
rogue = Characterclass.create(name: "Rogue")
sorcerer = Characterclass.create(name: "Sorcerer")
warlock = Characterclass.create(name: "Warlock")
witch = Characterclass.create(name: "Witch")
wizard = Characterclass.create(name: "Wizard")

acolyte = Background.create(name: "Acolyte")
anthropologist = Background.create(name: "Anthropologist")
archaeologist = Background.create(name: "Archaeologist")
charlatan = Background.create(name: "Charlatan")
city_watch = Background.create(name: "City Watch")
clan_crafter = Background.create(name: "Clan Crafter")
cloistered_scholar = Background.create(name: "Cloistered Scholar")
courtier = Background.create(name: "Courtier")
criminal = Background.create(name: "Criminal")
entertainer = Background.create(name: "Entertainer")
faction_agent = Background.create(name: "Faction Agent")
far_traveler = Background.create(name: "Far Traveler")
fisher = Background.create(name: "Fisher")
folk_hero = Background.create(name: "Folk Hero")
gladiator = Background.create(name: "Gladiator")
guild_artisan = Background.create(name: "Guild Artisan")
guild_merchant = Background.create(name: "Guild Merchant")
hermit = Background.create(name: "Hermit")
inheritor = Background.create(name: "Inheritor")
investigator = Background.create(name: "Investigator")
knight = Background.create(name: "Knight")
marine = Background.create(name: "Marine")
mercenary_veteran = Background.create(name: "Mercenary Veteran")
noble = Background.create(name: "Noble")
outlander = Background.create(name: "Outlander")
pirate = Background.create(name: "Pirate")
sage = Background.create(name: "Sage")
sailor = Background.create(name: "Sailor")
shipwright = Background.create(name: "Shipwright")
smuggler = Background.create(name: "Smuggler")
soldier = Background.create(name: "Soldier")
spy = Background.create(name: "Spy")
urban_bounty_hunter = Background.create(name: "Urban Bounty Hunter")
urchin = Background.create(name: "Urchin")

lg = Alignment.create(name: "Lawful Good")
ng = Alignment.create(name: "Neutral Good")
cg = Alignment.create(name: "Chaotic Good")
ln = Alignment.create(name: "Lawful Neutral")
n = Alignment.create(name: "Neutral")
cn = Alignment.create(name: "Chaotic Neutral")
le = Alignment.create(name: "Lawful Evil")
ne = Alignment.create(name: "Neutral Evil")
ce = Alignment.create(name: "Chaotic Evil")

ecth = Character.create(
   name: "Ectheleon",
   description: "A ranger on a quest to find his lost sister. He is also a servant of Kelemvor.",
   player_id: chris.id, 
   party_id: dof.id,
   alignment_id: cn.id,
   background_id: outlander.id,
   race_id: elf.id
)

Characterclassjoin.create(characterclass_id: ranger.id, character_id: ecth.id)

lav = Character.create(
    name: "Lavinia",
    description: "Oringinally from the swamp, she is on a quest to rid her homeland of a terrible blight.", 
    player_id: elaine.id, 
    party_id: dof.id,
    alignment_id: lg.id,
    background_id: folk_hero.id, 
    race_id: halfling.id
)

Characterclassjoin.create(characterclass_id: druid.id, character_id: lav.id)

dam = Character.create(
    name: "Damakos",
    description: "Estranged from his family, he is looking to find a new home based on a mysterious deed in his possession.", 
    player_id: adam.id, 
    party_id: dof.id,
    alignment_id: cn.id,
    background_id: hermit.id,
    race_id: tiefling.id
)

Characterclassjoin.create(characterclass_id: wizard.id, character_id: dam.id)

emy = Character.create(
    name: "Emyrs",
    description: "The classic bard... Won his lute in a battle of the bands against the yetis, though. You should ask him about it.", 
    player_id: josh.id, 
    party_id: dof.id,
    alignment_id: cg.id,
    background_id: entertainer.id, 
    race_id: half_elf.id
)

Characterclassjoin.create(characterclass_id: bard.id, character_id: emy.id)

kri = Character.create(
    name: "Kriv",
    description: "Deadpool, but for D&D",
    player_id: nick.id, 
    party_id: dof.id,
    alignment_id: cn.id, 
    background_id: sage.id,
    race_id: dragonborn.id
)

Characterclassjoin.create(characterclass_id: sorcerer.id, character_id: kri.id)

rod = Character.create(
    name: "Rodrigo de Paridan",
    description: "Searches the world for valuable artifacts in hopes of making a fortune.", 
    player_id: jack.id, 
    party_id: tti.id,
    alignment_id: cn.id, 
    background_id: archaeologist.id, 
    race_id: half_elf.id
)

Characterclassjoin.create(characterclass_id: warlock.id, character_id: rod.id)

coo = Character.create(
    name: "Cookie",
    description: "She comes from unknown origins, but loves to sail the open seas and collect trinkets along the way.", 
    player_id: emma.id, 
    party_id: tti.id,
    alignment_id: cg.id, 
    background_id: urchin.id,
    race_id: dwarf.id
)

Characterclassjoin.create(characterclass_id: rogue.id, character_id: coo.id)

mak = Character.create(
    name: "Maka",
    description: "A seemingly small woman that wields a giant axe and is always follwed around by her cat, Tonkatsu", 
    player_id: katie.id, 
    party_id: tti.id,
    alignment_id: lg.id,
    background_id: noble.id, 
    race_id: human.id
)

Characterclassjoin.create(characterclass_id: barbarian.id, character_id: mak.id)

cleric_spells = [
    {"name": "Inflict Wounds", 
        "desc": [
        "Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage."
        ],
        "classes": [
            {
                "name": "Cleric",
            }
        ]
    },
    {"name": "Prayer of Healing", 
        "desc": [
        "Up to six creatures of your choice that you can see within range each regain hit points equal to 2d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs."
        ],
        "classes": [
            {
                "name": "Cleric",
            }
        ]
    },
    {"name": "Spiritual Weapon", 
        "desc": [
        "You create a floating, spectral weapon within range that lasts for the duration or until you cast this spell again. When you cast the spell, you can make a melee spell attack against a creature within 5 feet of the weapon. On a hit, the target takes force damage equal to 1d8 + your spellcasting ability modifier.",
        "As a bonus action on your turn, you can move the weapon up to 20 feet and repeat the attack against a creature within 5 feet of it.",
        "The weapon can take whatever form you choose. Clerics of deities who are associated with a particular weapon (as St. Cuthbert is known for his mace and Thor for his hammer) make this spell's effect resemble that weapon."
        ],
        "classes": [
            {
                "name": "Cleric",
            }
        ]
    },
    {"name": "Mass Healing Word", 
        "desc": [
        "As you call out words of restoration, up to six creatures of your choice that you can see within range regain hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs."
        ],
        "classes": [
            {
                "name": "Cleric",
            }
        ]
    },
    {"name": "Conjure Celestial", 
        "desc": [
        "You summon a celestial of challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends.",
        "The celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don't violate its alignment. If you don't issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions.",
        "The DM has the celestial's statistics."
        ],
        "classes": [
            {
                "name": "Cleric",
            }
        ] 
    }
]

cleric_spells.each do |spell|
    new = Spell.create(name: spell[:name], description: spell[:desc])
    Classspell.create(characterclass_id: cleric.id, spell_id: new.id)
end


druid_spells = [
    {"name": "Entagle", 
        "desc": [
        "Grasping weeds and vines sprout from the ground in a 20-foot square starting form a point within range. For the duration, these plants turn the ground in the area into difficult terrain.",
        "A creature in the area when you cast the spell must succeed on a strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself.",
        "When the spell ends, the conjured plants wilt away."
        ],
        "classes": [
            {
                "name": "Druid",
            }
        ]
    },
    {"name": "Flame Blade", 
        "desc": [
        "You evoke a fiery blade in your free hand. The blade is similar in size and shape to a scimitar, and it lasts for the duration. If you let go of the blade, it disappears, but you can evoke the blade again as a bonus action.",
        "You can use your action to make a melee spell attack with the fiery blade. On a hit, the target takes 3d6 fire damage.",
        "The flaming blade sheds bright light in a 10-foot radius and dim light for an additional 10 feet."
        ],
        "classes": [
            {
                "name": "Druid",
            }
        ]
    },
    {"name": "Moonbeam", 
        "desc": [
        "A silvery beam of pale light shines down in a 5-foot radius, 40-foot-high cylinder centered on a point within range. Until the spell ends, dim light fills the cylinder.",
        "When a creature enters the spell's area for the first time on a turn or starts its turn there, it is engulfed in ghostly flames that cause searing pain, and it must make a constitution saving throw. It takes 2d10 radiant damage on a failed save, or half as much damage on a successful one.",
        "A shapechanger makes its saving throw with disadvantage. If it fails, it also instantly reverts to its original form and can't assume a different form until it leaves the spell's light.",
        "On each of your turns after you cast this spell, you can use an action to move the beam 60 feet in any direction."
        ],
        "classes": [
            {
                "name": "Druid",
            }
        ]
    },
    {"name": "Reincarnate", 
        "desc": [
        "You touch a dead humanoid or a piece of a dead humanoid. Provided that the creature has been dead no longer than 10 days, the spell forms a new adult body for it and then calls the soul to enter that body. If the target's soul isn't free or willing to do so, the spell fails.",
            "The magic fashions a new body for the creature to inhabit, which likely causes the creature's race to change. The DM rolls a d 100 and consults the following table to determine what form the creature takes when restored to life, or the DM chooses a form.",
            "01-04",
            " Dragonborn",
            "05-13",
            " Dwarf, hill",
            "14-21",
            " Dwarf, mountain",
            "22-25",
            " Elf, dark",
            "26-34",
            " Elf, high",
            "35-42",
            " Elf, wood",
            "43-46",
            " Gnome, forest",
            "47-52",
            " Gnome, rock",
            "53-56",
            " Half-elf",
            "57-60",
            " Half-orc",
            "61-68",
            " Halfling, lightfoot",
            "69-76",
            " Halfling, stout",
            "77-96",
            " Human",
            "97-00",
            " Tiefling",
            "The reincarnated creature recalls its former life and experiences. It retains the capabilities it had in its original form, except it exchanges its original race for the new one and changes its racial traits accordingly."
        ],
        "classes": [
            {
                "name": "Druid",
            }
        ]
    },
    {"name": "Storm of Vengeance", 
        "desc": [
        "A churning storm cloud forms, centered on a point you can see and spreading to a radius of 360 feet. Lightning flashes in the area, thunder booms, and strong winds roar. Each creature under the cloud (no more than 5,000 feet beneath the cloud) when it appears must make a constitution saving throw. On a failed save, a creature takes 2d6 thunder damage and becomes deafened for 5 minutes.",
        "Each round you maintain concentration on this spell, the storm produces additional effects on your turn.",
        "Round 2.",
        " Acidic rain falls from the cloud. Each creature and object under the cloud takes 1d6 acid damage.",
        "Round 3.",
        " You call six bolts of lightning from the cloud to strike six creatures or objects of your choice beneath the cloud. A given creature or object can't be struck by more than one bolt. A struck creature must make a dexterity saving throw. The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one.",
        "Round 4.",
        " Hailstones rain down from the cloud. Each creature under the cloud takes 2d6 bludgeoning damage.",
        "Round 5-10.",
        " Gusts and freezing rain assail the area under the cloud. The area becomes difficult terrain and is heavily obscured. Each creature there takes 1d6 cold damage. Ranged weapon attacks in the area are impossible. The wind and rain count as a severe distraction for the purposes of maintaining concentration on spells. Finally, gusts of strong wind (ranging from 20 to 50 miles per hour) automatically disperse fog, mists, and similar phenomena in the area, whether mundane or magical."
        ],
        "classes": [
            {
                "name": "Druid",
            }
        ]
    }
]

druid_spells.each do |spell|
    new = Spell.create(name: spell[:name], description: spell[:desc])
    Classspell.create(characterclass_id: druid.id, spell_id: new.id)
end

paladin_spells = [
    {"name": "Divine Favor", 
        "desc": [
        "Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal an extra 1d4 radiant damage on a hit."
        ],
        "classes": [
            {
                "name": "Paladin",
            }
        ]
    },
    {"name": "Branding Smite", 
        "desc": [
        "The next time you hit a creature with a weapon attack before this spell ends, the weapon gleams with astral radiance as you strike. The attack deals an extra 2d6 radiant damage to the target, which becomes visible if it's invisible, and the target sheds dim light in a 5-foot radius and can't become invisible until the spell ends."
        ],
        "classes": [
            {
                "name": "Paladin",
            }
        ]
    },
    {"name": "Find Steed", 
        "desc": [
        "You summon a spirit that assumes the form of an unusually intelligent, strong, and loyal steed, creating a long-lasting bond with it. Appearing in an unoccupied space within range, the steed takes on a form that you choose, such as a warhorse, a pony, a camel, an elk, or a mastiff. (Your DM might allow other animals to be summoned as steeds.) The steed has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of its normal type. Additionally, if your steed has an Intelligence of 5 or less, its Intelligence becomes 6, and it gains the ability to understand one language of your choice that you speak.",
        "Your steed serves you as a mount, both in combat and out, and you have an instinctive bond with it that allows you to fight as a seamless unit. While mounted on your steed, you can make any spell you cast that targets only you also target your steed.",
        "When the steed drops to 0 hit points, it disappears, leaving behind no physical form. You can also dismiss your steed at any time as an action, causing it to disappear. In either case, casting this spell again summons the same steed, restored to its hit point maximum.",
        "While your steed is within 1 mile of you, you can communicate with it telepathically.",
        "You can't have more than one steed bonded by this spell at a time. As an action, you can release the steed from its bond at any time, causing it to disappear."
        ],
        "classes": [
            {
                "name": "Paladin",
            }
        ]
    },
    {"name": "Raise Dead", 
        "desc": [
        "You return a dead creature you touch to life, provided that it has been dead no longer than 10 days. If the creature's soul is both willing and at liberty to rejoin the body, the creature returns to life with 1 hit point.",
        "This spell also neutralizes any poisons and cures nonmagical diseases that affected the creature at the time it died. This spell doesn't, however, remove magical diseases, curses, or similar effects; if these aren't first removed prior to casting the spell, they take effect when the creature returns to life. The spell can't return an undead creature to life.",
        "This spell closes all mortal wounds, but it doesn't restore missing body parts. If the creature is lacking body parts or organs integral for its survival--its head, for instance--the spell automatically fails.",
        "Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears."
        ],
        "classes": [
            {
                "name": "Paladin",
            }
        ]
    },
    {"name": "Destructive Wave", 
        "desc": [
        "You strike the ground, creating a burst of divine energy that ripples outward from you. Each creature you choose within 30 feet of you must succeed on a Constitution saving throw or take 5d6 thunder damage, as well as 5d6 radiant or necrotic damage (your choice), and be knocked prone. A creature that succeeds on its saving throw takes half as much damage and isn’t knocked prone."
        ],
        "classes": [
            {
                "name": "Paladin",
            }
        ]
    }
]

paladin_spells.each do |spell|
    new = Spell.create(name: spell[:name], description: spell[:desc])
    Classspell.create(characterclass_id: paladin.id, spell_id: new.id)
end

wizard_spells = [
    {"name": "Find Familiar", 
        "desc": [
        "You gain the service of a familiar, a spirit that takes an animal form you choose: bat, cat, crab, frog (toad), hawk, lizard, octopus, owl, poisonous snake, fish (quipper), rat, raven, sea horse, spider, or weasel. Appearing in an unoccupied space within range, the familiar has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of a beast.",
        "Your familiar acts independently of you, but it always obeys your commands. In combat, it rolls its own initiative and acts on its own turn. A familiar can't attack, but it can take other actions as normal.",
        "When the familiar drops to 0 hit points, it disappears, leaving behind no physical form. It reappears after you cast this spell again.",
        "While your familiar is within 100 feet of you, you can communicate with it telepathically. Additionally, as an action, you can see through your familiar's eyes and hear what it hears until the start of your next turn, gaining the benefits of any special senses that the familiar has. During this time, you are deaf and blind with regard to your own senses.",
        "As an action, you can temporarily dismiss your familiar. It disappears into a pocket dimension where it awaits your summons. Alternatively, you can dismiss it forever. As an action while it is temporarily dismissed, you can cause it to reappear in any unoccupied space within 30 feet of you.",
        "You can't have more than one familiar at a time. If you cast this spell while you already have a familiar, you instead cause it to adopt a new form. Choose one of the forms from the above list. Your familiar transforms into the chosen creature.",
        "Finally, when you cast a spell with a range of touch, your familiar can deliver the spell as if it had cast the spell. Your familiar must be within 100 feet of you, and it must use its reaction to deliver the spell when you cast it. If the spell requires an attack roll, you use your action modifier for the roll."
        ],
        "classes": [
            {
                "name": "Wizard",
            }
        ]
    },
    {"name": "Grease", 
        "desc": [
        "Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration.",
        "When the grease appears, each creature standing in its area must succeed on a dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a dexterity saving throw or fall prone."
        ],
        "classes": [
            {
                "name": "Wizard",
            }
        ]
    },
    {"name": "Phantasmal Killer",
        "desc": [
        "You tap into the nightmares of a creature you can see within range and create an illusory manifestation of its deepest fears, visible only to that creature. The target must make a wisdom saving throw. On a failed save, the target becomes frightened for the duration. At the start of each of the target's turns before the spell ends, the target must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends."
        ],
        "classes": [
            {
                "name": "Wizard",
            }
        ]
    },
    {"name": "Chain Lightning", 
        "desc": [
        "You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must be within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts.",
        "A target must make a dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much damage on a successful one."
        ],
        "classes": [
            {
                "name": "Wizard",
            }
        ]
    },
    {"name": "Weird", 
    "desc": [
        "Drawing on the deepest fears of a group of creatures, you create illusory creatures in their minds, visible only to them. Each creature in a 30-foot-radius sphere centered on a point of your choice within range must make a wisdom saving throw. On a failed save, a creature becomes frightened for the duration. The illusion calls on the creature's deepest fears, manifesting its worst nightmares as an implacable threat. At the start of each of the frightened creature's turns, it must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends for that creature."
        ],
        "classes": [
            {
                "name": "Wizard",
            }
        ]
    }
]

wizard_spells.each do |spell|
    new = Spell.create(name: spell[:name], description: spell[:desc])
    Classspell.create(characterclass_id: wizard.id, spell_id: new.id)
end

