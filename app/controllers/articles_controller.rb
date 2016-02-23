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

    if @article.save
  redirect_to categories_path
   else
    redirect_to new_category_article_path(@article.category_id), notice: "hata oluştu"
   end
  end


   def show
   	@categories =Category.all
    @article = Article.find(params[:id]) 
    @category =Category.find(params[:category_id])
   end


	def edit
	@article =Article.find(params[:id])
		
	end

	def update
		@article =Article.find(params[:id])
        
        @article.update(article_params)
        redirect_to categories_path

	end

   def destroy
      @article =Article.find(params[:id])

      @article.destroy
      redirect_to categories_path
    end

  private
  def article_params
    params.require(:article).permit(:owner_id,:category_id,:title,:category, :text, :image)
  end

end
