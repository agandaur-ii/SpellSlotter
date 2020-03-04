class Spell < ApplicationRecord
    has_many :characterspells 
    has_many :characters, through: :characterspells

    has_many :classspells
    has_many :characterclasses, through: :classspells
end
