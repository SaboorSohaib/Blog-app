require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'GET users_controller#index' do
    before(:example) { get '/users' } # get(:index)
    
  end

  describe 'GET users_controller#show' do
    before(:example) { get '/users/:user_id' } # get(:show)
  
  end
end
