class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    # с помощью Active Record нахожу статью по id, которые беру из параметров
    @article = Article.find(params[:id])
    if @articles.update(page_params)

      # Делаю переход(переадресацию) на страницу /articles домашняя страница статей
      # TODO: сделать переадресацию на текущий статью
      redirect_to @articles
    else
      render 'edit'
    end
  end

  def destroy

    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
