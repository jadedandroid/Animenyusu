class Comment < ApplicationRecord
  belongs_to :User
  validates :char_limit


def char_limit
  words_number = self.content.split().length
  if words_number < 6 || words_number > 80
    self.errors.add(:content, "all comments must be between 6 and 80 words long")
  end

end