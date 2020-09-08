class Anime < ApplicationRecord
    has_many :liked_animes
    has_many :tags
    has_many :users, through: :liked_anime
    has_many :posts, through: :tags

    
end
