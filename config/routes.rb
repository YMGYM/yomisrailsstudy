Rails.application.routes.draw do

  # root 'posts#index'
  # # get '/' => 'hello#index'
  # get '/hello/index'
  #
  # get '/hello/list' => 'hello#list'
  #
  # get '/hello/skip' => 'hello#skip'

  get '/posts' => 'posts#index'

  get '/posts/new' => 'posts#new'

  post '/posts/create' => 'posts#create'
end
