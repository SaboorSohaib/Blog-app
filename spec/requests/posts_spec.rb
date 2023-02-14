require 'rails_helper'

RSpec.describe 'PostsController', type: :request do
  describe 'GET posts_controller#index' do
    before(:example) { get '/users/:user_id/posts' } # get(:index)
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
    
  end

  describe 'GET posts_controller#show' do
    before(:example) { get '/users/:user_id/posts/:post_id' } # get(:index)
    
  end
end
