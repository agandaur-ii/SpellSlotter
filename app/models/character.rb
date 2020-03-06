class Character < ApplicationRecord
    belongs_to :player
    belongs_to :party, optional: true
    has_many :characterspells
    has_many :spells, through: :characterspells

    
    belongs_to :race
    belongs_to :background
    belongs_to :alignment
    has_many :characterclassjoins
    has_many :characterclasses, through: :characterclassjoins

    validates :name, presence: true 
    validates_format_of :name, :with => /\A[a-zA-Z\d ]*\Z/, message: "can only be comprised of letters"

end