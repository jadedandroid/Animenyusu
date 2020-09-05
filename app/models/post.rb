class Post < ApplicationRecord
    belongs_to :User
    has_many :comments
    validates :char_limit

    def char_limit
        words_number = self.content.split().length
        if words_number < 30 || words_number > 800
          self.errors.add(:content, "all comments must be between 6 and 800 words long")
        end


end


