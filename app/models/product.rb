class Product < ApplicationRecord
    validates :name, :price, :description, :category, presence: true
    def self.search(search)
        if search
            where('name LIKE ?', '%#{search}%')
        else
            all
        end
    end
end
