class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new; end

  def create; end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
