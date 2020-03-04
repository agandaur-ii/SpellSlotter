class Spell < ApplicationRecord
    has_many :characterspells 
    has_many :characters, through: :characterspells

    def cleric_spells  
    [
        {"name": "Inflict Wounds", "desc": [
            "Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage."
            ]
        },
        {"name": "Prayer of Healing", "desc": [
            "Up to six creatures of your choice that you can see within range each regain hit points equal to 2d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs."
            ]
        },
        {"name": "Spiritual Weapon", "desc": [
            "You create a floating, spectral weapon within range that lasts for the duration or until you cast this spell again. When you cast the spell, you can make a melee spell attack against a creature within 5 feet of the weapon. On a hit, the target takes force damage equal to 1d8 + your spellcasting ability modifier.",
            "As a bonus action on your turn, you can move the weapon up to 20 feet and repeat the attack against a creature within 5 feet of it.",
            "The weapon can take whatever form you choose. Clerics of deities who are associated with a particular weapon (as St. Cuthbert is known for his mace and Thor for his hammer) make this spell's effect resemble that weapon."
            ]
        },
        {"name": "Mass Healing Word", "desc": [
            "As you call out words of restoration, up to six creatures of your choice that you can see within range regain hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs."
            ]
        },
        {"name": "Conjure Celestial", "desc": [
            "You summon a celestial of challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends.",
		    "The celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don't violate its alignment. If you don't issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions.",
		    "The DM has the celestial's statistics."
            ]
        }
    ]
    end

    def druid_spells
    [
        {"name": "Entagle", "desc": [
            "Grasping weeds and vines sprout from the ground in a 20-foot square starting form a point within range. For the duration, these plants turn the ground in the area into difficult terrain.",
		    "A creature in the area when you cast the spell must succeed on a strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself.",
		    "When the spell ends, the conjured plants wilt away."
            ]
        },
        {"name": "Flame Blade", "desc": [
            "You evoke a fiery blade in your free hand. The blade is similar in size and shape to a scimitar, and it lasts for the duration. If you let go of the blade, it disappears, but you can evoke the blade again as a bonus action.",
		    "You can use your action to make a melee spell attack with the fiery blade. On a hit, the target takes 3d6 fire damage.",
		    "The flaming blade sheds bright light in a 10-foot radius and dim light for an additional 10 feet."
            ]
        },
        {"name": "Moonbeam", "desc": [
            "A silvery beam of pale light shines down in a 5-foot radius, 40-foot-high cylinder centered on a point within range. Until the spell ends, dim light fills the cylinder.",
		    "When a creature enters the spell's area for the first time on a turn or starts its turn there, it is engulfed in ghostly flames that cause searing pain, and it must make a constitution saving throw. It takes 2d10 radiant damage on a failed save, or half as much damage on a successful one.",
		    "A shapechanger makes its saving throw with disadvantage. If it fails, it also instantly reverts to its original form and can't assume a different form until it leaves the spell's light.",
		    "On each of your turns after you cast this spell, you can use an action to move the beam 60 feet in any direction."
            ]
        },
        {"name": "Reincarnate", "desc": [
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
            ]
        },
        {"name": "Storm of Vengeance", "desc": [
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
            ]
        }
    ]
    end

    def paladin_spells
    [
        {"name": "Divine Favor", "desc": [
            "Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal an extra 1d4 radiant damage on a hit."
            ]
        },
        {"name": "Branding Smite", "desc": [
            "The next time you hit a creature with a weapon attack before this spell ends, the weapon gleams with astral radiance as you strike. The attack deals an extra 2d6 radiant damage to the target, which becomes visible if it's invisible, and the target sheds dim light in a 5-foot radius and can't become invisible until the spell ends."
            ]
        },
        {"name": "Find Steed", "desc": [
            "You summon a spirit that assumes the form of an unusually intelligent, strong, and loyal steed, creating a long-lasting bond with it. Appearing in an unoccupied space within range, the steed takes on a form that you choose, such as a warhorse, a pony, a camel, an elk, or a mastiff. (Your DM might allow other animals to be summoned as steeds.) The steed has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of its normal type. Additionally, if your steed has an Intelligence of 5 or less, its Intelligence becomes 6, and it gains the ability to understand one language of your choice that you speak.",
		    "Your steed serves you as a mount, both in combat and out, and you have an instinctive bond with it that allows you to fight as a seamless unit. While mounted on your steed, you can make any spell you cast that targets only you also target your steed.",
		    "When the steed drops to 0 hit points, it disappears, leaving behind no physical form. You can also dismiss your steed at any time as an action, causing it to disappear. In either case, casting this spell again summons the same steed, restored to its hit point maximum.",
		    "While your steed is within 1 mile of you, you can communicate with it telepathically.",
		    "You can't have more than one steed bonded by this spell at a time. As an action, you can release the steed from its bond at any time, causing it to disappear."
            ]
        },
        {"name": "Raise Dead", "desc": [
            "You return a dead creature you touch to life, provided that it has been dead no longer than 10 days. If the creature's soul is both willing and at liberty to rejoin the body, the creature returns to life with 1 hit point.",
		    "This spell also neutralizes any poisons and cures nonmagical diseases that affected the creature at the time it died. This spell doesn't, however, remove magical diseases, curses, or similar effects; if these aren't first removed prior to casting the spell, they take effect when the creature returns to life. The spell can't return an undead creature to life.",
		    "This spell closes all mortal wounds, but it doesn't restore missing body parts. If the creature is lacking body parts or organs integral for its survival--its head, for instance--the spell automatically fails.",
		    "Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears."
            ]
        },
        {"name": "Destructive Wave", "desc": [
            "You strike the ground, creating a burst of divine energy that ripples outward from you. Each creature you choose within 30 feet of you must succeed on a Constitution saving throw or take 5d6 thunder damage, as well as 5d6 radiant or necrotic damage (your choice), and be knocked prone. A creature that succeeds on its saving throw takes half as much damage and isn’t knocked prone."
            ]
        }
    ]
    end

    def wizard_spells
    [
        {"name": "Find Familiar", "desc": [
            "You gain the service of a familiar, a spirit that takes an animal form you choose: bat, cat, crab, frog (toad), hawk, lizard, octopus, owl, poisonous snake, fish (quipper), rat, raven, sea horse, spider, or weasel. Appearing in an unoccupied space within range, the familiar has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of a beast.",
		    "Your familiar acts independently of you, but it always obeys your commands. In combat, it rolls its own initiative and acts on its own turn. A familiar can't attack, but it can take other actions as normal.",
		    "When the familiar drops to 0 hit points, it disappears, leaving behind no physical form. It reappears after you cast this spell again.",
		    "While your familiar is within 100 feet of you, you can communicate with it telepathically. Additionally, as an action, you can see through your familiar's eyes and hear what it hears until the start of your next turn, gaining the benefits of any special senses that the familiar has. During this time, you are deaf and blind with regard to your own senses.",
		    "As an action, you can temporarily dismiss your familiar. It disappears into a pocket dimension where it awaits your summons. Alternatively, you can dismiss it forever. As an action while it is temporarily dismissed, you can cause it to reappear in any unoccupied space within 30 feet of you.",
		    "You can't have more than one familiar at a time. If you cast this spell while you already have a familiar, you instead cause it to adopt a new form. Choose one of the forms from the above list. Your familiar transforms into the chosen creature.",
		    "Finally, when you cast a spell with a range of touch, your familiar can deliver the spell as if it had cast the spell. Your familiar must be within 100 feet of you, and it must use its reaction to deliver the spell when you cast it. If the spell requires an attack roll, you use your action modifier for the roll."
            ]
        },
        {"name": "Grease", "desc": [
            "Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration.",
		    "When the grease appears, each creature standing in its area must succeed on a dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a dexterity saving throw or fall prone."
            ]
        },
        {"name": "Phantasmal Killer", "desc": [
            "You tap into the nightmares of a creature you can see within range and create an illusory manifestation of its deepest fears, visible only to that creature. The target must make a wisdom saving throw. On a failed save, the target becomes frightened for the duration. At the start of each of the target's turns before the spell ends, the target must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends."
            ]
        },
        {"name": "Chain Lightning", "desc": [
            "You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must be within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts.",
		    "A target must make a dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much damage on a successful one."
            ]
        },
        {"name": "Weird", "desc": [
            "Drawing on the deepest fears of a group of creatures, you create illusory creatures in their minds, visible only to them. Each creature in a 30-foot-radius sphere centered on a point of your choice within range must make a wisdom saving throw. On a failed save, a creature becomes frightened for the duration. The illusion calls on the creature's deepest fears, manifesting its worst nightmares as an implacable threat. At the start of each of the frightened creature's turns, it must succeed on a wisdom saving throw or take 4 d10 psychic damage. On a successful save, the spell ends for that creature."
            ]
        }
    ]
    end

end
