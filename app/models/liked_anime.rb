class LikedAnime < ApplicationRecord
  belongs_to :anime
  belongs_to :User


end
