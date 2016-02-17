class ArticlesController < ApplicationController
  before_action :authenticate_author!, only: [:edit, :update, :destroy, :new]

  def index
  	@categories =Category.all #navbar için eklendi
  	@articles = Article.where(category_id: params[:category_id])
    
   
  end


  def new 
   @article = Article.new
   #@category = Category.find(params[:category_id])
  end


  def create
  @article = Article.new(article_params)

  @article.save
  redirect_to categories_path
  end


   def show
   	@categories =Category.all
    @article = Article.find(params[:id])
    @category =Category.find(params[:category_id])
   end

   def destroy
      @article =Article.find(params[:id])

      @article.destroy
      redirect_to categories_path
    end

  private
  def article_params
    params.require(:article).permit(:category_id,:title,:category, :text, :image)
  end

end
