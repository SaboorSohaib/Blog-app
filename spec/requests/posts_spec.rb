# require 'rails_helper'

# RSpec.describe 'PostsController', type: :request do
#   describe 'GET posts_controller#index' do
#     before(:example) { get '/users/:user_id/posts' } # get(:index)
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it "renders 'index' template" do
#       expect(response).to render_template(:index)
#     end
#     it "renders 'index' body" do
#       expect(response.body).to include('This posts index page')
#     end
#   end

#   describe 'GET posts_controller#show' do
#     before(:example) { get '/users/:user_id/posts/:post_id' } # get(:index)
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it "renders 'show' template" do
#       expect(response).to render_template(:show)
#     end
#     it "renders 'index' body" do
#       expect(response.body).to include('This is posts show page')
#     end
#   end
# end
