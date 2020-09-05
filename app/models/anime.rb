class Anime < ApplicationRecord
    has_many :Liked_animes
    has_many :tags
    has_many :Users, through: :Liked_anime
    has_many :Posts, through: :tags

    
end
