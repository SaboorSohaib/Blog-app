require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'GET users_controller#index' do
    before(:example) { get '/users' } # get(:index)
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end
    it "renders 'index' body" do
      expect(response.body).to include('<h1>list all users<h1>')
    end
  end

  describe 'GET users_controller#show' do
    before(:example) { get '/users/:user_id' } # get(:show)
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template(:show)
    end
    it "renders 'index' body" do
      expect(response.body).to include('Hello user with id:')
    end
  end
end
