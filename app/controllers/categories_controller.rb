class CategoriesController < ApplicationController
	before_action :authenticate_author!, only: [:edit, :update, :destroy, :new,:show, :index]

	def new
      @category = Category.new
      @category.articles.build #ne ise yarar bilmiyorum
	end

	def create
     @category = Category.new(category_params)
 
    @category.save
    redirect_to categories_path
    end

	
	def index
		@categories = Category.all

	end

	def destroy
      @category = Category.find(params[:id])

      @category.destroy

      redirect_to categories_path , notice:"Deleted was successfully"
    end

	
	private
    
    def category_params
     params.require(:category).permit(:name)
    end
end
