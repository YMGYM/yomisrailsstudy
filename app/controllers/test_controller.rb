class TestController < ApplicationController
  def index
    @test = Test.all
  end

  def new
  end

  def create
    test = Test.new(test_params)
    test.save
    redirect_to test
  end

  def show
    @test = Test.find(params[:id])
  end

  def edit
  end

  private
    def test_params
      params.require(:test).permit(:title, :content)
    end
end

