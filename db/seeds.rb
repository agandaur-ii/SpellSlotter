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
ttf = Party.create(name: "The Turtle Isles", dm_id: doug.id) 

Character.create(
    name: "Ectheleon",
    race: "Wood Elf",
    class: "Ranger", 
    background: "Outlander", 
    alignment: "CN", 
    description: "A ranger on a quest to find his lost sister. He is also a servant of Kelemvor.", 
    player_id: chris.id, 
    party_id: dof.id
)

Character.create(
    name: "Lavinia",
    race: "Halfling",
    class: "Druid", 
    background: "Folk Hero", 
    alignment: "LG", 
    description: "Oringinally from the swamp, she is on a quest to ride her homeland of a terrible blight.", 
    player_id: elaine.id, 
    party_id: dof.id
)

Character.create(
    name: "Damakos",
    race: "Teifling",
    class: "Wizard", 
    background: "Hermit", 
    alignment: "CN", 
    description: "Estranged from his family, he is looking to find a new home based on a deed in his possesion at an unknown destination.", 
    player_id: adam.id, 
    party_id: dof.id
)

Character.create(
    name: "Shump",
    race: "Half-orc",
    class: "Fighter", 
    background: "Gladiator", 
    alignment: "CG", 
    description: "He finds himself the new owner of a flying castle, with an army of halfling servants to corral...", 
    player_id: dan.id
)

Character.create(
    name: "Emyrs",
    race: "Half-elf",
    class: "Bard", 
    background: "Entertainer", 
    alignment: "CG", 
    description: "The classic bard... Won his lute in a battle of the bands against the yetis, though. You should ask him about it.", 
    player_id: josh.id, 
    party_id: dof.id
)

Character.create(
    name: "",
    race: "",
    class: "", 
    background: "", 
    alignment: "", 
    description: "", 
    player_id: , 
    party_id: 
)

Character.create(
    name: "",
    race: "",
    class: "", 
    background: "", 
    alignment: "", 
    description: "", 
    player_id: , 
    party_id: 
)

Character.create(
    name: "",
    race: "",
    class: "", 
    background: "", 
    alignment: "", 
    description: "", 
    player_id: , 
    party_id: 
)

Character.create(
    name: "",
    race: "",
    class: "", 
    background: "", 
    alignment: "", 
    description: "", 
    player_id: , 
    party_id: 
)

Character.create(
    name: "",
    race: "",
    class: "", 
    background: "", 
    alignment: "", 
    description: "", 
    player_id: , 
    party_id: 
)

