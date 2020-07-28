class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @post = Post.all
  end

  def new

  end

  def create
    post = Post.new
    post.title = params['title']
    post.content = params['content']

    post.save

    redirect_to '/posts'
  end

  def show
    @post = Post.find(params["id"])
  end

  def edit
    @post = Post.find(params["id"])
  end

  def update
    post = Post.find(params["id"])

    post.title = params["title"]
    post.content = params["content"]

    post.save

    redirect_to '/posts/' + post.id.to_s

    # redirect_to "/posts/show/#{post.id}"
  end

  def destroy
    post = Post.find(params["id"])

    post.destroy

    redirect_to '/posts'
  end
end