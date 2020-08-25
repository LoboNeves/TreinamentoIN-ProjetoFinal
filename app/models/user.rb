class User < ApplicationRecord
    has_secure_password #password_digest
    validates :name, :lastname, :password, :password_confirmation, presence: true
    validates :email, presence: true, uniqueness: true
    #Diferenciação dos tipos de usuário
    enum kind: {
        admin: 0,
        client: 1,
        guest: 2
    }
end
