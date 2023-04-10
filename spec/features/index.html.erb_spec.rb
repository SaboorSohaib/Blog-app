require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :feature do
  describe 'Index page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'developer')
      @user2 = User.create!(name: 'Abid', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 5,
                            bio: 'Engineer')
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

    it 'has correct link' do
      visit users_path
      expect(page).to have_link(@user1.name, href: user_path(@user1))
      expect(page).to have_link(@user2.name, href: user_path(@user2))
    end
  end
end
