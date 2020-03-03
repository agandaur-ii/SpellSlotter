class Character < ApplicationRecord
    belongs_to :player
    belongs_to :party
    has_many :characterspells
    has_many :spells, through: :characterspells
end
