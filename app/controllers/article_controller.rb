class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    # article = Article.new
    # article.title = params[article["title"]]
    # article.content = params[article["content"]]
    # article.save

    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end


  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy

  end
  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
