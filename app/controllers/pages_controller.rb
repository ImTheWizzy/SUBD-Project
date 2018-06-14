class PagesController < ApplicationController
    #before_action :authenticate_user!
    def landing
    end

    def recipes
        @user = User.find(params[:id])
    end

    def users
    end
end
