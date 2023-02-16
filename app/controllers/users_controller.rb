class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # @posts = User.find(params[:id])
    @user = User.find(params[:id])
    @posts = Post.find(params[:id])
    # @recent_posts = @user.most_recent_post
  end
end
