class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 }
    validates :bio, length: { minimum: 30, message: " has to be 30 characters or more" }

    def total_likes
        likes = 0
        self.posts.each do |post|
            likes += post.likes
        end
        likes
    end
end
