Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only:[:index, :show] do
        resources :posts, only:[:index] do
          resources :comments only:[:index, :create]
        end
      end
    end
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'users#index'
  resources :users, only:[:index, :show] do
    resources :posts, only:[:index, :show, :new, :create, :destroy] do
      resources :comments, only:[:new, :create, :destroy]
      resources :likes, only: [:new, :create]
    end
  end
end
