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

    # post = Post.create('title' => params['title'], 'content' => params["content"])
    # post.save
    redirect_to '/posts'
  end

  def show
    @post = Post.find(params["id"])
    @post = Post.where("id" => params['id'])
  end
end
