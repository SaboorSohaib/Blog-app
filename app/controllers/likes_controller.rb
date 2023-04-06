class LikesController < ApplicationController
  def create
    @like = Like.new(author: current_user, post: Post.find(params[:id]))
    @like.save
    redirect_to user_posts_path
  end
end
