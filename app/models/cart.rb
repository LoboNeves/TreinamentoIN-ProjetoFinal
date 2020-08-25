class Cart < ApplicationRecord
    has_many :product
    validates :name, :amount, :unit_price, :total_price, presence: true
end
