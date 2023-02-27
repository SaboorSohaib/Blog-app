require 'rails_helper'

RSpec.describe 'PostIndex', type: :feature do
  describe 'Post Index page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'developer')
      visit root_path

      @post1 = Post.create!(title: 'Football', text: 'I like football', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @post2 = Post.create!(title: 'Criket', text: 'He likes criket', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @post3 = Post.create!(title: 'Tennis', text: 'He likes tennis', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @comment1 = Comment.create!(text: 'This is my first comment', author_id: @user1.id,
                                  post_id: @post1.id)
      @comment2 = Comment.create!(text: 'This is my second comment', author_id: @user1.id,
                                  post_id: @post1.id)
      @comment3 = Comment.create!(text: 'This is my third comment', author_id: @user1.id,
                                  post_id: @post1.id)
      visit user_posts_path(@user1)
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
    
    it 'display 5 most recent comment' do 
        expect(page).to have_content(@comment3.text)
        expect(page).to have_content(@comment2.text)
        expect(page).to have_content(@comment1.text)
    end

    it 'display post title' do
        expect(page).to have_content(@post1.title)
    end

    it 'display post comments counter' do 
        expect(page).to have_content(@post1.comments_counter)
    end

    it 'dispaly post likes counter' do
        expect(page).to have_content(@post1.likes_counter)
    end
  end
end
