class Product < ApplicationRecord
    #Metodo para pesquisar produto específico
    validates :name, :price, :description, :category, presence: true
    #scope :search, ->(query) { where("name LIKE ?", "%#{query}%")} Outro jeito de fazer, mas priferi o de baixo por achar mais compreensível
    def self.search(search) #Pesquisa por nome
        where("name LIKE ?", "%#{search}%")
    end

    def self.category_search(search) #Pesquisa por categoria
        where("category LIKE ?", "%#{search}%")
    end

    def self.filter(min_price, max_price) #Sistema de filtro entre dois preços
        where("price >= ? AND price <= ?", min_price, max_price)
    end
end
