class Post < ApplicationRecord
    has_many :comments, foreign_key: 'posts_id'
    has_many :likes, foreign_key: 'posts_id'
    belongs_to :user, foreign_key: 'users_id'

    def most_recent_comment
        comments.where(posts_id: id).order(created_at: :desc).limit(5)
    end
end
