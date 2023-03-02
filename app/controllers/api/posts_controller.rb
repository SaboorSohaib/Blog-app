module Api
  module V1
    class PostsController < ApiController
      def index
        @posts = Post.where(author_id: params[:user_id])
        render json: @posts
      end
    end
  end
end
