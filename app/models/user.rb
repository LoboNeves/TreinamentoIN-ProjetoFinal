class User < ApplicationRecord
    has_secure_password #password_digest
    has_many :product
    validates :name, :password, :password_confirmation, presence: true
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i #Validação de formato de email
    validates :email, presence: true, format: { with: VALID_EMAIL_FORMAT}, uniqueness: true
end
