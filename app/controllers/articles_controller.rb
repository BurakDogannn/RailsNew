class ArticlesController < ApplicationController
  before_action :authenticate_author!
  

  def index
 
  end


  def new 
   
  end


  def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to new_article_path
  end


   def show
    @article = Article.find(params[:id])
   end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
