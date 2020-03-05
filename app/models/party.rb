class Party < ApplicationRecord
    has_many :characters 
    has_many :players, through: :characters

    validates :name, presence: true 
    validates_format_of :name, :with => /\A([^\d\W]|[-])*\Z/, message: "- Please only include letters in the name of your party"
end
