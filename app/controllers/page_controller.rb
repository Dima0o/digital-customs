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

  end

  def destroy

  end


  def pages

  end

  private

  def page_params
    params.require(:page).permit(:name, :description)
  end

end
