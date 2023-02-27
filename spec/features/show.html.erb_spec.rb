require 'rails_helper'

RSpec.describe 'show.html.erb_spec.rb', type: :feature do
  describe 'shwo page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'developer')
      @user2 = User.create!(name: 'Abid', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 5,
                            bio: 'Engineer')

      visit root_path

      @post = Post.create!(title: 'Football', text: 'I like football', comments_counter: 4,
                            likes_counter: 4, user_id: @user1.id)
      @post = Post.create!(title: 'Criket', text: 'He likes criket', comments_counter: 5,
                            likes_counter: 5, user_id: @user2.id)

      visit user_path(@user1.id)
    end
    it 'dispalys the user name' do
        visit users_path
        expect(page).to have_content(@user1.name)
        expect(page).to have_content(@user2.name)
      end
      it 'dispalys user image' do
        visit users_path
        expect(page).to have_css("img[src='https://unsplash.com/photos/WNoLnJo7tS8']")
        expect(page).to have_css("img[src='https://unsplash.com/photos/WNoLnJo7tS8']")
      end
      it 'display user number of post' do
        visit users_path
        expect(page).to have_content(@user1.posts_counter)
        expect(page).to have_content(@user2.posts_counter)
      end
  
  end
end
