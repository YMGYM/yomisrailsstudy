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
    @test = Test.find(params[:id])
  end

  def update
    test = Test.find(params[:id])
    test.update(test_params)
    redirect_to test
  end

  def destroy
    test = Test.find(params[:id])
    test.destroy

    redirect_to test_index_path
  end

  private
    def test_params
      params.require(:test).permit(:title, :content)
    end
end

