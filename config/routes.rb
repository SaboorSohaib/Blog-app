Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  # get 'posts/new', to: 'posts#new', as: 'create_post'
  # post 'posts/create', to: 'posts#create'
  # get 'users/:user_id/posts/:id', to: 'posts#show', as: 'post'
  # post 'users/:user_id/posts/:id', to: 'comments#create'
  # post 'users/:user_id/posts/:id/likes', to: 'likes#create_like', as: 'like'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :create, :new] do
      resources :comments, only: [:create, :new] 
      resources :likes, only: [:create]
    end
  end
end
