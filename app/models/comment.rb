class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'users_id'
  belongs_to :user, foreign_key: 'posts_id'
  after_save :update_comments_counter

  def update_comments_counter
    post.increment!(comments_counter)
  end
end
