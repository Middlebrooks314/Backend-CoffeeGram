class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    validates :username, presence: true, uniqueness: :true
    validates :password, presence: true
    has_secure_password
end
