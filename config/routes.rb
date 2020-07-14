Rails.application.routes.draw do

  root 'hello#index'
  # get '/' => 'hello#index'

  get '/hello/index'

  get '/hello/list' => 'hello#list'

  get '/hello/skip' => 'hello#skip'
end
