Rails.application.routes.draw do

  resources :article
  # root 'posts#index'
  # # get '/' => 'hello#index'
  # get '/hello/index'
  #
  # get '/hello/list' => 'hello#list'
  #
  # get '/hello/skip' => 'hello#skip'

  # get '/posts' => 'posts#index'
  #
  # get '/posts/new' => 'posts#new'
  #
  # # post '/posts/create' => 'posts#create'
  # post '/posts' => 'posts#create'
  #
  # get '/posts/:id' => 'posts#show'
  #
  # get '/posts/:id/edit' => 'posts#edit'
  #
  # post '/posts/:id/update' => 'posts#update'
  #
  # post '/posts/:id/destroy' => 'posts#destroy'
  #
  resources :posts
end
