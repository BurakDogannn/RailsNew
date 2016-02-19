class CommentsController < ApplicationController
 def new

 end


 def create
    @article = Article.find(params[:article_id])
    

    @comment = @article.comments.create(comment_params)
    redirect_to category_article_path(@article.category_id,@article.id)

  end

  def destroy
  	@comment =Comment.find(params[:id])
    @article = Article.find(params[:article_id])
  	@comment.destroy
  	redirect_to category_article_path(@article.category_id,@article.id)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
