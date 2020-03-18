class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
    @category = Category.all
  end

  def create
    article = Article.new(article_params)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :category, :image) # todo: add userid
  end
end
