class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

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
    if @articles.update(page_params)
      redirect_to @articles
    else
      render 'edit'
    end
  end



  def edit
    @article = Article.find(params[:id])
  end


  def index
    @articles = Article.all.order('created_at DESC')
  end


  def destroy
    puts "1111"
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def page_params
    params.require(:article).permit(:title, :text)
  end

end
