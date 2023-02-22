class CommentsController < ApplicationController

  def create
    user = current_user
    @comment = Comment.new(
      text: params[:text],
      post_id: params[:post_id],
      author_id: user.id
    )
    return unless @comment.save

    redirect_to request.original_url
  end
end
