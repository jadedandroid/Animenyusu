class Comment < ApplicationRecord
  belongs_to :User
  validates :char_limit


def char_limit
  char_number = self.content.split("").length
  if char_number < 6 || char_number > 120
    self.errors.add(:content, "all comments must be between 6 and 120 char long")
  end
end

end