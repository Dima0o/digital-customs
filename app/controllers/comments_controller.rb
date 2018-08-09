class CommentsController < ApplicationController

  def create
    @article = Page.find(params[:id])
    @comment = @page.comments.create(comment_params)
    redirect_to page_path(@page)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
