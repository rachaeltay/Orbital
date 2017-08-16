Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :sessions => "users/sessions" }
  
  devise_scope :user do
    get '/auth/facebook/callback', to: 'callbacks#facebook'
  end
  
  root 'posts#index'
  
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # get '/logout',  to: 'sessions#destroy'
  # get 'auth/facebook', as: "auth_provider"
  
  
  resources :posts do
    member do
      post 'add', to: 'posts#add'
      post 'remove', to: 'posts#remove'
    end
  end
  
  resources :users
  
  resources :updates, only: [:new, :create]
end
