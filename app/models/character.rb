class Character < ApplicationRecord
    belongs_to :player
    belongs_to :party
    has_many :characterspells
    has_many :spells, through: :characterspells

    def races 
      [
        "Dragonborn",
		"Dwarf",
		"Elf",
		"Gnome",
		"Half-Elf",
		"Half-Orc",
		"Halfling",
		"Human",
		"Tiefling"
      ]
    end
    
    def classes
      [
		"Barbarian",
		"Bard",
		"Cleric",
		"Druid",
		"Fighter",
		"Monk",
		"Paladin",
		"Ranger",
		"Rogue",
		"Sorcerer",
        "Warlock",
        "Witch",
		"Wizard"
      ]
    end

    def backgrounds 
      [
        "Acolyte",
        "Anthropologist",
        "Archaeologist",
        "Charlatan",
        "City Watch / Investigator",
        "Clan Crafter",
        "Cloistered Scholar",
        "Courtier",
        "Criminal / Spy",
        "Entertainer",
        "Faction Agent",
        "Far Traveler",
        "Fisher",
        "Folk Hero",
        "Gladiator",
        "Guild Artisan / Guild Merchant",
        "Hermit",
        "Inheritor",
        "Inheritance",
        "Knight",
        "Marine",
        "Mercenary Veteran",
        "Noble",
        "Outlander",
        "Pirate",
        "Sage",
        "Sailor",
        "Shipwright",
        "Smuggler",
        "Soldier",
        "Urban Bounty Hunter",
        "Urchin"
      ]
    end

    def alignments
      [
        "Lawful Good",
        "Neutral Good",
        "Chaotic Good",
        "Lawful Neutral",
        "Neutral",
        "Chaotic Neutral",
        "Lawful Evil",
        "Neutral Evil",
        "Chaotic Evil"
      ]
    end
end
