class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'users_id'
  belongs_to :post, foreign_key: 'posts_id'
  after_save :update_likes_counter

  def update_likes_counter
    post.increment!(likes_counter)
  end
end
