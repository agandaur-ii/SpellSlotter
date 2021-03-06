class Player < ApplicationRecord
    has_many :characters 
    has_many :parties, through: :characters 

    validates :name, presence: true 
    validates_format_of :name, :with => /\A[a-zA-Z\d ]*\Z/, message: "can only be comprised of letters"
end 
