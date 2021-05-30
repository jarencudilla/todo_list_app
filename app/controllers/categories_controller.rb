class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end
 
    def new
         @category = Category.new
    end
 
    def create
         @category = Category.new(category_params)
 
        if @category.valid? 
             @category.save
             redirect_to @category
        else
             render :new
        end 
    end
 
    def show
         @category = Category.find(params[:id])
    end
 
    def edit
         @category = Category.find(params[:id])
    end
 
    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
             flash[:notice] = "The category has been updated successfully"
             redirect_to @category
        else
             flash[:notice] = "Meh, something went wrong."
             render :edit
        end
    end
 
    def destroy
         @category = Category.find(params[:id])
         @category.destroy
         flash[:notice] = "Category has been deleted."
         redirect_to categories_path 
    end
 
    private 
 
    def category_params
         params.require(:category).permit(:category_name, :category_details)
    end
 
end