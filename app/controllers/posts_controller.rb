class PostsController < ApplicationController
  def index
    @user = params[:user_id]
  end

  def show
    @user = params[:user_id]
    @post = params[:id]
  end
end
