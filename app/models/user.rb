class User < ApplicationRecord
    has_secure_password #password_digest
    has_many :product
    validates :name, :password, :password_confirmation, presence: true
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_FORMAT}, uniqueness: true
    #Diferenciação dos tipos de usuário
    enum kind: {
        admin: 0,
        client: 1,
        guest: 2
    }
end
