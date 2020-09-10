class Post < ApplicationRecord
    belongs_to :user
    belongs_to :tag
    belongs_to :anime
    has_many :comments
    # validates :word_limit

    # def word_limit
    #     words_number = self.content.split().length
    #     if words_number < 2 || words_number > 800
    #       self.errors.add(:content, "all posts must be between 6 and 800 words long")
    #     end
    # end

    

end


