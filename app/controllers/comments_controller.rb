class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment].permit(:article_id, :text))
    @comment.save
    redirect_to @article
  end

  def detroy
  end
end