class HelloController < ApplicationController
  def index

  end

  def list

  end

  def skip
    redirect_to '/hello/list'
  end
end