class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :author, class_name: 'User'

  after_save :update_posts_counter

  def update_posts_counter
    author.update(posts_counter: author.posts.all.length)
  end

  def most_recent_comments
    Comment.limit(5).order(created_at: :desc)
  end
end
