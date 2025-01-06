class Product < ApplicationRecord
    validates :name, presence: true 
    belongs_to :costomer
end
