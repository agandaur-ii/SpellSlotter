class Characterspell < ApplicationRecord
    belongs_to :spell 
    belongs_to :character 

    #accepts_nested_attributes_for :spell, :character
end
