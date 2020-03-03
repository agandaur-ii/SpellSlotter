class Spell < ApplicationRecord
    has_many :characterspells 
    has_many :characters, through: :characterspells
end
