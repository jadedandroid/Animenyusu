class Tag < ApplicationRecord
  belongs_to :User
  belongs_to :Anime
end
