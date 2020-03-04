class Characterclass < ApplicationRecord
    has_many :characterclassjoins
    has_many :characters, through: :characterclassjoins

    has_many :classspells
    has_many :spells, through: :classspells
end
