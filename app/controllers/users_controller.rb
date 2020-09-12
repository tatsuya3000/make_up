class UsersController < ApplicationController
    
    def show
        user = User.find(params[:id])
        @name = user.name
        @products = user.products
    end
    
end
