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
end
