class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comment = Comment.new
    @like = Like.new
  end

  def create_comment
    @comment = Comment.new(comment_prarams)
    @comment.author = current_user
    @comment.post = Post.find(params[:id])
    @comment.save
    redirect_to user_post_path
  end

  def create_like
    @like = Like.new(author: current_user, post: Post.find(params[:id]))
    @like.save
    redirect_to user_post_path
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    @post.comments_counter = 0
    @post.likes_counter = 0
    return unless @post.save

    redirect_to posts_create_path
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def comment_prarams
    params.require(:comment).permit(:text)
  end
end
