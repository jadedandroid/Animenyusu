class User < ApplicationRecord
    has_many :Lke_anime
    has_many :Anime, through: :Liked_Anime
    has_many :post
    validates :userame, presence: true, uniqueness: true

    has_secure_password
    
    def userame
        self.username
    end
end
