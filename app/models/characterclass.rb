class Characterclass < ApplicationRecord
    has_many :characterclassjoins
    has_many :characters, through: :characterclassjoins
end
