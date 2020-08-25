class Product < ApplicationRecord
    validates :name, :price, :description, :category, presence: true
end
