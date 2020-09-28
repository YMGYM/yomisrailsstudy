class CommentsController < ApplicationController
  def create
    post = Test.find(params[:id])
    comments = post.comments.new
    comments.content = params[:content]
    comments.save

    redirect_to post

    end


  end
end
