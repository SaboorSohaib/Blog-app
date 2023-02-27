require 'rails_helper'

RSpec.describe 'users/index.html.erb', type: :feature do
  describe 'Index page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 3,
        bio: 'developer')
    end

    it 'dispalys the user name' do
      visit users_path
      expect(page).to have_content('Ali')
    end

    it 'dispalys user image' do
      visit users_path
      expect(page).to have_css("img[src='https://unsplash.com/photos/WNoLnJo7tS8']")
    end
  end
end
