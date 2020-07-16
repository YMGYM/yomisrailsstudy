class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index

  end

  def new

  end

  def create
    apple = Post.new
    apple.title = params["title"]
    apple.content = params["content"]

    apple.save

    apple = Post.create("title" => params["title"], "content"=> params["content"])
    apple.save
    redirect_to '/posts'
  end
end
