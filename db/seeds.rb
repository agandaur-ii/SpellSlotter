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
    description: "Oringinally from the swamp, she is on a quest to ride her homeland of a terrible blight.", 
    player_id: elaine.id, 
    party_id: dof.id,
    alignment_id: lg.id,
    background_id: folk_hero.id, 
    race_id: halfling.id
)

Characterclassjoin.create(characterclass_id: druid.id, character_id: lav.id)

dam = Character.create(
    name: "Damakos",
    description: "Estranged from his family, he is looking to find a new home based on a deed in his possesion at an unknown destination.", 
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

