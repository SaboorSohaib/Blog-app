require 'rails_helper'

RSpec.describe 'PostShow', type: :feature do
  describe 'Post Show Page' do
    before(:each) do
      @user1 = User.create!(name: 'Ali', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'Developer')
      @user2 = User.create!(name: 'Abid', photo: 'https://unsplash.com/photos/WNoLnJo7tS8', posts_counter: 4,
                            bio: 'Engineer')

      @post1 = Post.create!(title: 'Football', text: 'I like football', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @post2 = Post.create!(title: 'Cricket', text: 'He likes criket', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @post3 = Post.create!(title: 'Tennis', text: 'He likes tennis', comments_counter: 4,
                            likes_counter: 4, author_id: @user1.id)
      @comment1 = Comment.create!(text: 'This is my first comment', author_id: @user1.id,
                                  post_id: @post1.id)
      @comment2 = Comment.create!(text: 'This is my second comment', author_id: @user1.id,
                                  post_id: @post1.id)
      @comment3 = Comment.create!(text: 'This is my first comment', author_id: @user2.id,
                                  post_id: @post1.id)
      @comment4 = Comment.create!(text: 'This is my second comment', author_id: @user2.id,
                                  post_id: @post1.id)
      visit user_posts_path(@user1, @post1)
    end

    it 'show post text' do
      expect(page).to have_content(@post1.text)
    end

    it 'show comments counter' do
      expect(page).to have_content(@post1.comments_counter)
    end

    it 'show commenter name' do
      expect(page).to have_content(@user1.name)
      expect(page).to have_content(@user2.name)
    end

    it 'show post comment text' do
      expect(page).to have_content(@comment4.text)
      expect(page).to have_content(@comment3.text)
      expect(page).to have_content(@comment2.text)
      expect(page).to have_content(@comment1.text)
    end

    it 'show post author name' do
      expect(page).to have_content(@post1.author_id)
    end

    it 'show post title' do
      expect(page).to have_content(@post1.title)
    end

    it 'show post likes counter' do
      expect(page).to have_content(@post1.likes_counter)
    end
  end
end
