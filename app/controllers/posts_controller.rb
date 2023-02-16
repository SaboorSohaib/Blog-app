class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = Post.where(:author_id)
  end

  def show
    @user = User.find(params[:user_id])
    @post = User.find(params[:id])
  end
end
