class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_prarams)
    @comment.author = current_user
    @comment.post = Post.find(params[:id])
    @comment.save
    redirect_to user_posts_path
  end

  private

  def comment_prarams
    params.require(:comment).permit(:text)
  end
end
