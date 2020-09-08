class User < ApplicationRecord
    has_many :liked_animes
    has_many :animes, through: :liked_animes
    has_many :posts
    validates :username, presence: true, uniqueness: true

    has_secure_password
    
    # def username
    #     self.username
    # end
end
