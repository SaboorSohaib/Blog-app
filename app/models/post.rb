class Post < ApplicationRecord
    has_many :comments, foreign_key: 'posts_id'
    has_many :likes, foreign_key: 'posts_id'
    belongs_to :user, foreign_key: 'users_id'
end
