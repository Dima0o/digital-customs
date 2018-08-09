class ArticleController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(page_params)
    respond_with @article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(page_params)
      redirect_to @article
    else
      render 'edit'
    end
  end



    def edit
      @article = Article.find(params[:id])
    end


  def index
    @articles = Article.all
  end


  def destroy
    @article = Article.find(params[:id])
    @Article.destroy
    redirect_to article_index_path
  end

  private

  def page_params
    params.require(:article).permit(:title, :text)
  end

end
