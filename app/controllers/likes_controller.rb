class LikesController < ApplicationController
  def create
    user = current_user
    @like = Like.new(
      posts_id: params[:posts_id],
      author_id: user.id
    )
    return unless @like.save

    redirect_to user_posts_path
  end
end
