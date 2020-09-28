Rails.application.routes.draw do
  devise_for :users
  root 'test#index'
  # resources :post
  resources :test

  post '/comments/create/:id' => 'comments#create'
  # resources :article
  # resources :posts
end
