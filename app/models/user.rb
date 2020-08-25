class User < ApplicationRecord
    has_secure_password
    validates :name, :lastname, presence: true
    validates :email, uniqueness: true
end
