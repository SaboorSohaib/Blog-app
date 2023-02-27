require 'rails_helper'

RSpec.describe 'users/show.html.rb', type: :feature do
  describe 'show page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'developer')
      @user2 = User.create!(name: 'Abid', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'Engineer')

      visit root_path

      @post1 = Post.create!(title: 'Football', text: 'I like football', comments_counter: 4,
                           likes_counter: 4, author_id: @user1.id)
      @post2 = Post.create!(title: 'Criket', text: 'He likes criket', comments_counter: 4,
                           likes_counter: 4, author_id: @user1.id)
      @post3 = Post.create!(title: 'Tennis', text: 'He likes tennis', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)

      visit user_path(@user1.id)
    end

    it 'dispalys the user name' do
      expect(page).to have_content(@user1.name)
    end

    it 'dispalys user image' do
      expect(page).to have_css("img[src='https://unsplash.com/photos/WNoLnJo7tS8']")
    end

    it 'display user number of post' do
      expect(page).to have_content(@user1.posts_counter)
    end

    it 'dsiplay 3 most recent post' do 
      expect(page).to have_content(@post3.title)
      expect(page).to have_content(@post2.title)
      expect(page).to have_content(@post1.title)
    end

    it 'display button to see all posts' do 
        expect(page).to have_link('See All Posts')
    end

    it 'click see all posts and redirects to user posts index page' do
        click_link 'See All Posts'
        expect(page).to have_current_path user_posts_path(@user1)
    end
  end
end
