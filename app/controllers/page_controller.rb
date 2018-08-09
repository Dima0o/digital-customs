class PageController < ApplicationController

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.create(page_params)
    respond_with @page
  end

  def update
    @article = Page.find(params[:id])
    if @article.update(page_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
  end

    def edit
      @page = Page.find(params[:id])
    end


  def index
    @pages = Page.all

  end

  private

  def page_params
    params.require(:page).permit(:name, :description)
  end

end
