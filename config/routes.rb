Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      # resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :recipes
      end
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

