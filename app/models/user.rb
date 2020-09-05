class User < ApplicationRecord
    has_many :Lke_anime
    has_many :Anime, through: :Liked_Anime
    has_many :post
end
