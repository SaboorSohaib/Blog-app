class Post < ApplicationRecord
  has_many :comments, foreign_key: 'posts_id'
  has_many :likes, foreign_key: 'posts_id'
  belongs_to :user, class_name: 'User'
  after_save :update_posts_counter

  def most_recent_comment
    comments.where(posts_id: id).order(created_at: :desc).limit(5)
  end

  def update_posts_counter
    user.increment!(:posts_counter)
  end
end
