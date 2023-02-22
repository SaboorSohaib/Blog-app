# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

first_post = Post.create(author_id: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author_id: first_user, title: 'Hello', text: 'This is my second post')
third_post = Post.create(author_id: first_user, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(author_id: first_user, title: 'Hello', text: 'This is my fourth post')

Comment.create(posts_id: first_post, author_id: first_user, text: 'Hi Tom!' )
Comment.create(posts_id: first_post, author_id: first_user, text: 'Hi Ali!' )
Comment.create(posts_id: second_post, author_id: first_user, text: 'Hi Abid!' )
Comment.create(posts_id: second_post, author_id: first_user, text: 'Hi Omar!' )
Comment.create(posts_id: third_post, author_id: first_user, text: 'Hi Rashid!' )
Comment.create(posts_id: fourth_post, author_id: first_user, text: 'Hi Sohaib!' )


