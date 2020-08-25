class ProductsController < ApplicationController
    
    def index
        @products = Product.all
    end
    
    def show
        @products = Product.find(params[:id])
    end
    
    private
    def produdt_params
        params.permit(:name, :image_url, :feature, :method)
    end
    
end
