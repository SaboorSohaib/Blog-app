class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    user = current_user
    @post = Post.new(
      title: params[:title],
      text: params[:text],
      author_id: user.id
    )
    return unless @post.save

    redirect_to user_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
