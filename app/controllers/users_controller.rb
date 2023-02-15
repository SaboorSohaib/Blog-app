class UsersController < ApplicationController
  def index; 
    @users = User.all
  end

  def show
    @ = params[:id]
  end

  def posts
    @id = params[:user_id]
  end
end
