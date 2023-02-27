require 'rails_helper'

# RSpec.describe 'PostsController', type: :request do
#   describe 'GET posts_controller#index' do
#     before(:example) { get '/users/:id/posts' } # get(:index)
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it "renders 'index' template" do
#       expect(response).to render_template(:index)
#     end
#     it "renders 'index' body" do
#       expect(response.body).to include('Showing all posts for user with id:')
#     end
#   end

#   describe 'GET posts_controller#show' do
#     before(:example) { get '/users/:id/posts/:id' } # get(:index)
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it "renders 'show' template" do
#       expect(response).to render_template(:show)
#     end
#     it "renders 'index' body" do
#       expect(response.body).to include('Showing posts with id:')
#     end
#   end
# end
# RSpec.describe 'PostsControllers', type: :request do
#   describe 'GET /index' do
#     it '/users/id/posts test' do
#       get '/users/:user_id/posts'
#       expect(response).to have_http_status(:ok)
#       expect(response).to render_template(:index)
#       expect(response.body).to include 'This is a list of posts by one user'
#     end
#     it '/users/id/posts/id test' do
#       get '/users/:user_id/posts/:user_id'
#       expect(response).to have_http_status(:ok)
#       expect(response).to render_template(:show)
#       expect(response.body).to include 'This is a single post'
#     end
#   end
# end
