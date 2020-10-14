class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :title, :content, presence: true
    validates :content, length: {minimum: 100}

    def like_post
        self.likes += 1
        self.likes
    end
end
