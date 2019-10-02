Rails.application.routes.draw do
  resources :favorites
  namespace :api do
    namespace :v1 do
      resources :users
      # resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/profile', to: 'users#profile'
      get '/users/recipes/:id', to: 'users#show'
      resources :recipes
      resources :favorites, only: [:create, :destroy]
      end
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

