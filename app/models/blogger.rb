class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, :age, :bio, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than: 0 }
    validates :bio, length: { minimum: 30}
end
