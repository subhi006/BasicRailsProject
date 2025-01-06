class Costomer < ApplicationRecord
    validates :address, presence: true 
    has_many :products
end