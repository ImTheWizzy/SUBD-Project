class PagesController < ApplicationController
    #before_action :authenticate_user!
    def landing
    end

    def recipes
        @user = User.find(params[:id])
        @recipe = Recipe.find(params[:id])
    end

    def users
        @user = User.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.insert(recipe_params)
        @recipe.user_id = current_user.id
        if @recipe.save
            flash[:notice] = "Success"
        end
    end

    private
    def recipe_params
        params.require(:recipe).permit(:user_id, :name, :category, :description, :body, :cook_time, :servings, :image_url)
    end
end
