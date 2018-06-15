class RecipesController < ApplicationController
    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.insert(:user_id, :name, :category, :description, :body, :cook_time, :servings, :image_url)
        @recipe.user_id = current_user.id
        if @recipe.save
            flash[:notice] = "Success"
        end
    end

    # private
    # def recipe_params
    #     @params = params.require(:recipe).permit(:user_id, :name, :category, :description, :body, :cook_time, :servings, :image_url).to_s
    # end
end
