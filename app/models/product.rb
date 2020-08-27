class Product < ApplicationRecord
    #Metodo para pesquisar produto específico
    validates :name, :price, :description, :category, presence: true
    #scope :search, ->(query) { where("name LIKE ?", "%#{query}%")} Outro jeito de fazer, mas priferi o de baixo por achar mais compreensível
    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end

    def self.filter(min_price, max_price)
        where("price >= ? AND price <= ?", min_price, max_price)
    end
end
